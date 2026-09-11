import * as cg3 from "./.divvun-rt/cg3.ts";
import * as divvun from "./.divvun-rt/divvun.ts";
import * as hfst from "./.divvun-rt/hfst.ts";
import { Command, StringEntry } from "./.divvun-rt/mod.ts";

// The tuned speller config, from tools/spellcheckers/config.json. It is copied
// in rather than imported because divvun-runtime relocates a pipeline's source
// into a temporary directory before bundling it, where no relative import
// resolves. Regenerate after retuning the speller:
//
//     deno run --allow-read --allow-write sync-speller-config.ts
//
// --- BEGIN GENERATED from tools/spellcheckers/config.json ---
const SPELLER_BASE = {
    n_best: 100,
    max_weight: 10000,
    beam: 25,
    reweight: {
        start_penalty: 3,
        mid_penalty: 1,
        end_penalty: 1,
    },
    node_pool_size: 128,
    recase: true,
    search_budget: 1000000,
};
// --- END GENERATED ---

// Where this pipeline departs from the tuned speller, and only there. The
// effective values are the same ones the hand-written copy this replaced set,
// so behaviour is unchanged; every field not named here now follows the tuned
// config as it is retuned.
const spellcheckerConfig = {
    ...SPELLER_BASE,
    // Vektområde, meir enn for sjølvstendig stavekontroll - vi kan filtrera med
    // cg-reglar. Compare the base above before trusting that: the standalone
    // speller has since been retuned past this beam, so the reason given no
    // longer describes which of the two is wider. Needs evaluation.
    beam: 18.0,
    // Pre-existing: the search runs unbounded here, bounded in the base.
    // Needs evaluation.
    search_budget: undefined,
};

export default function smjGramRelease(entry: StringEntry): Command {
  let x = hfst.tokenize("tokenize", entry, { model_path: "tokeniser-gramcheck-gt-desc.pmhfst" });
  x = divvun.blanktag("whitespace", x, { model_path: "analyser-gt-whitespace.hfst" });
  x = cg3.vislcg3("valency", x, { model_path: "valency.bin" });
  x = cg3.vislcg3("mwe-dis", x, { model_path: "mwe-dis.bin" });
  x = cg3.mwesplit("mwesplit", x);
  x = divvun.cgspell("speller", x, {
    acc_model_path: "acceptor.default.hfst",
    err_model_path: "errmodel.default.hfst",
    config: spellcheckerConfig,
  });
  x = cg3.vislcg3("postspell-valency", x, { model_path: "valency-postspell.bin" });
  x = cg3.vislcg3("grc-disamb", x, { model_path: "grc-disambiguator.bin" });
  x = cg3.vislcg3("spell-sugg-filtering", x, { model_path: "spellchecker.bin" });
  x = cg3.vislcg3("gramcheck", x, { model_path: "grammarchecker-release.bin" });
  return divvun.suggest("suggestions", x, { model_path: "generator-gramcheck-gt-norm.hfstol" });
}

/**
 * Dev pipeline for testing with local models.
 */
export function localTest_dev(entry: StringEntry): Command {
  let x = hfst.tokenize("tokenize", entry, { model_path: "@./tokeniser-gramcheck-gt-desc.pmhfst" });
  x = divvun.blanktag("whitespace", x, { model_path: "@./analyser-gt-whitespace.hfst" });
  x = cg3.vislcg3("valency", x, { model_path: "@../../src/cg3/valency.cg3" });
  x = cg3.vislcg3("mwe-dis", x, { model_path: "@../tokenisers/mwe-dis.cg3" });
  x = cg3.mwesplit("mwesplit", x);
  x = divvun.cgspell("speller", x, {
    acc_model_path: "@./acceptor.default.hfst",
    err_model_path: "@./errmodel.default.hfst",
    config: spellcheckerConfig,
  });
  x = cg3.vislcg3("postspell-valency", x, { model_path: "@./valency-postspell.cg3" });
  x = cg3.vislcg3("grc-disamb", x, { model_path: "@./grc-disambiguator.cg3" });
  x = cg3.vislcg3("spell-sugg-filtering", x, { model_path: "@./spellchecker.cg3" });
  x = cg3.vislcg3("gramcheck", x, { model_path: "@./grammarchecker.cg3" });
  return divvun.suggest("suggestions", x, { model_path: "@./generator-gramcheck-gt-norm.hfstol" });
}

/**
 * Dev pipeline for testing with local models, with tracing.
 */
export function localTestTrace_dev(entry: StringEntry): Command {
  let x = hfst.tokenize("tokenize", entry, { model_path: "@./tokeniser-gramcheck-gt-desc.pmhfst" });
  x = divvun.blanktag("whitespace", x, { model_path: "@./analyser-gt-whitespace.hfst" });
  x = cg3.vislcg3("mwe-dis", x, { model_path: "@../tokenisers/mwe-dis.cg3", config: { trace: true } });
  x = cg3.mwesplit("mwesplit", x);
  x = divvun.blanktag("errorwhitespace", x, { model_path: "@./analyser-gt-errorwhitespace.hfst" });
  x = divvun.cgspell("speller", x, {
    acc_model_path: "@./acceptor.default.hfst",
    err_model_path: "@./errmodel.default.hfst",
    config: spellcheckerConfig,
  });
  x = cg3.vislcg3("disamb", x, { model_path: "@../../src/cg3/disambiguator.cg3", config: { trace: true } });
  x = cg3.vislcg3("spell-sugg-filtering", x, { model_path: "@./spellchecker.cg3", config: { trace: true } });
  x = cg3.vislcg3("gramcheck", x, { model_path: "@./grammarchecker.cg3", config: { trace: true } });
  return divvun.suggest("suggestions", x, { model_path: "@./generator-gramcheck-gt-norm.hfstol" });
}
