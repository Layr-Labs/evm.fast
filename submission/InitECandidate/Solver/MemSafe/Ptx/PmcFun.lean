import InitECandidate.Solver.MemSafe.Ptx.PmcBody

/-!
# F3: **`process_message_call`'s post** (`pmc_funSpec`)

For every entry typing `Γ` with `G` and `FoPre M msg`, a return ends in `PmcFin Γ s out t` (`Ptx/PmcPost.lean`),
from the posts of `process_message` (`HypPm`, package K's `BKeep` and package L's `LogsIn` included) and of
`process_create_message` (`HypPcm`) as explicit hypotheses.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

section fun'
variable {M : Nat} {msg : BitVec 64} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem hoare_pmcBody (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hfo0 : FoPre M msg Γ0 s0) (hl : s0.locals.lookup (nm "msg") = some (.val (.word msg)))
    (hpm : HypPm σ M) (hpcm : HypPcm σ M) (htc : fld s0.memory msg 24 = 0 → TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (fun t => t = s0) pmcBody (PmcQ Γ0 s0) := by
  have hord0 := ordered_of_G hG0 hp0
  unfold pmcBody
  refine hoare_skipSeq ?_
  refine hoare_decCallS ((sumSpecA_relX alloc_R).and (allocSpec_alloc guestCtx_code))
    fun s hs hP vs hvs callee v st ⟨hR, hA⟩ hst hsh => ?_
  subst hP
  obtain ⟨out, hJB⟩ := jb_alloc hG0 hp0 hfo0 hl hvs hR hA hsh
  refine hoare_conseq (P := fun t => ∃ out, JB M msg Γ0 s p0 out t) (Q := PmcQ Γ0 s) ?_
    (fun t _ ht => ⟨out, ht ▸ hJB⟩) (fun r t _ _ hq v hv => ?_)
  · refine hoare_seqP (hoare_mzJC' hord0) ?_
    refine hoare_exists fun out' => ?_
    exact hoare_conseq (hoare_frame hG0 hpm hpcm htc (M := M) (msg := msg) (out := out'))
      (fun t _ ht => fe_of_jc hG0 hp0 hfo0 ht) (fun r t _ _ hq => hq)
  · obtain ⟨o, ho, hf⟩ := hq v hv
    exact ⟨o, ho, pmcFin_congr rfl rfl rfl rfl hf⟩

/-- **`process_message_call`'s post.** -/
theorem pmc_funSpec (hpm : HypPm σ M) (hpcm : HypPcm σ M) :
    FunSpec σ guestCtx (nm "process_message_call") (PmcR (σ := σ) M) := by
  intro vs body callee rs hl s hs hloc r hr Γ hG ⟨msg, hvs, hfo, htc⟩ v hv
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hlk⟩ := lookupCode_one code_pmc hl
  obtain rfl : A = .val (.word msg) := List.head_eq_of_cons_eq hvs
  obtain ⟨p, hp, -⟩ := id hG
  have hQ := hoare_pmcBody hG hp hfo (by rw [hloc]; exact hlk) hpm hpcm htc s hs rfl
    (by rw [hr]; subst hv; trivial)
  rw [hr] at hQ
  exact hQ v (by subst hv; rfl)

end fun'

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.pmc_funSpec
