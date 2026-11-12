import InitECandidate.Solver.Wit.NdbW
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.Band.RootPre

/-!
# `WitG` for the record family `guestHooksR` (witg)

* **`wsW_of_fits`**: in a `G guestC guestHooksR` state, if the `ws` global is null or the base of a
  `Γ` object of type `tWSR`, then `WsW` holds: that object's record hook (`wsD`, `WsRW`) makes its
  node DB a frozen node DB (`NdbR`), and lemma (a) (`ndbW_of_ndbR`) gives `NdbW … hp`.
* **`witG_of_gt`**: `WitG guestC guestHooksR` from the staged GT entry `ws : nptr tWSR`
  (`Globs` then gives the fit). Today's `guestC` has `ws : nptr tWS`, so the hypothesis is the
  staged configuration fact (`scratchpad/rec/stage/`); once applied it is `by decide`.
* **`dwPre_of_G`**: `decode_witness_to_mpt`'s precondition at `ws_storage_trie`'s call
  `decode_witness_to_mpt(lds (ws + 0), root)` straight from `G` (band item #6).
-/

namespace InitECandidate.Solver.Wit
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem txF_cell0 (m : Mem) (o : Obj) : txF m o 0 = rd m o.base := by
  unfold txF Obj.cell
  simp

/-- **`WsW` from `G` and a `tWSR`-typed `ws`.** -/
theorem wsW_of_fits {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s)
    {w : BitVec 64} (hw : gword s (nm "ws") = some w) (hf : Fits Γ (.nptr tWSR) w) :
    Band.WsW s := by
  refine ⟨w, hw, ?_⟩
  rcases hf with h | ⟨o, ho, hb, ht⟩
  · exact Or.inl h
  obtain ⟨p, hp, hord, hL, -, -, -, hW⟩ := hG
  obtain ⟨-, -, -, -, hN, -⟩ := wsRW_of_wf ht (hW o ho)
  refine Or.inr ⟨p, hp, hord, ?_⟩
  rw [txF_cell0, hb] at hN
  exact ndbW_of_ndbR hL hN

/-- **`WitG` at the record family**, from the staged typing of the `ws` global. -/
theorem witG_of_gt (hGT : guestC.GT.lookup (nm "ws") = some (.nptr tWSR)) :
    Band.WitG guestC (guestHooksR (σ := σ)) := by
  intro Γ s hG
  obtain ⟨w, hw, hf⟩ := hG.choose_spec.2.2.2.2.2.1 _ _ hGT
  exact wsW_of_fits hG hw hf

/-- The witness state's node DB `lds (ws + 0)` is `NdbR` (the staged record hook of `ws`). -/
theorem ndbR_of_G (hGT : guestC.GT.lookup (nm "ws") = some (.nptr tWSR)) {Γ : Gam}
    {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {w : BitVec 64}
    (hw : gword s (nm "ws") = some w) (hnn : nullMax ≤ w.toNat) :
    NdbR Γ s.memory (rd s.memory w) := by
  obtain ⟨w', hw', hf⟩ := hG.choose_spec.2.2.2.2.2.1 _ _ hGT
  rw [hw] at hw'
  cases hw'
  rcases hf with hf | ⟨o, ho, hb, ht⟩
  · omega
  obtain ⟨p, hp, hord, hL, -, -, -, hW⟩ := hG
  obtain ⟨-, -, -, -, hN, -⟩ := wsRW_of_wf ht (hW o ho)
  rw [txF_cell0, hb] at hN
  exact hN

/-- `DwPre` at `decode_witness_to_mpt(lds (ws + 0), root)` from `G` (non-null `ws`). -/
theorem dwPre_of_G (hGT : guestC.GT.lookup (nm "ws") = some (.nptr tWSR)) {Γ : Gam}
    {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {w : BitVec 64}
    (hw : gword s (nm "ws") = some w) (hnn : nullMax ≤ w.toNat) (rh : ValueHOL 64) :
    Band.DwPre [.val (.word (rd s.memory w)), rh] s :=
  Band.dwPre_of_wsW (witG_of_gt hGT Γ s hG) hw hnn rh

end InitECandidate.Solver.Wit

#print axioms InitECandidate.Solver.Wit.wsW_of_fits
#print axioms InitECandidate.Solver.Wit.witG_of_gt
#print axioms InitECandidate.Solver.Wit.dwPre_of_G
#print axioms InitECandidate.Solver.Wit.ndbR_of_G
