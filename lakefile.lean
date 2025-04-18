import Lake
open Lake DSL

package math2001 where
  -- moreServerArgs := #[
  --   "-Dlinter.unusedVariables=false", -- ignores unused variables
  --   "-DquotPrecheck=false",
  --   "-DwarningAsError=false",
  --   "-Dpp.unicode.fun=true"  -- pretty-prints `fun a ↦ b`
  -- ]

lean_lib Library

@[default_target]
lean_lib Math2001 where
  globs := #[.submodules `Math2001]
  moreLeanArgs := #[
    "-Dlinter.unusedVariables=false", -- ignores unused variables
    "-DquotPrecheck=false",
    "-DwarningAsError=false",
    "-Dpp.unicode.fun=true"  -- pretty-prints `fun a ↦ b`
  ]

/-
want also
"-Dpush_neg.use_distrib=true", -- negates ¬(P ∧ Q) to (¬ P ∨ ¬ Q)
but currently only Lean core options can be set in lakefile
-/

-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"9d6b50d77c4"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"565cdcb266f"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"e23b08714da"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"b6d00f332a4"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"9a07518812f"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"bd6616c746d"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"132e5112a46"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"7458f0e73e0"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"132e5112a46"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"d3a6c9f3bd1"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"feec58a7ee9"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"v4.5.0"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"e1d0b5c3f8c"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"14151c79a2c"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"e7d0ec3b0e6"
-- ok require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"86ecbac93d1"

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"490d2d4820d"

-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"007ad7420b9"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"7509e796a5f"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"7af47e01b4d"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"3a748a56b49"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"a55d6e57970"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"6bd7a4911dc"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"3007dc8384a"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"b1b4ebf76b3"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"3752900e2f1"
-- broken require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"490d2d4820d"


--require mathlib from git "https://github.com/leanprover-community/mathlib4" @ s!"v{Lean.versionString}"
--require Duper from git "https://github.com/hrmacbeth/duper" @ "main"
--require autograder from git "https://github.com/robertylewis/lean4-autograder-main" @ "864b34ce06d8536aec0c38e57448c17d1f83572a"
