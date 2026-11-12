import InitECandidate.Solver.Wit.Prod

/-!
# The witness lists of the stateless input are slice arrays (`SlArr`)

`slArr_of_slaW`: a slice array in the sense of the `tPL` / `tSI` hooks (`Hooks.SlaW`: a `tSLA` object, every
slice short, in the heap, inside a `tVAL` object and ending at or below the array) gives `SlArr` (every entry
a slice record `SlRec`), the `Pre` of `NdbBuildSpec`. `slArr_si_state`, `slArr_si_codes`: for a `tSI` object of
`Γ` under `G`, its `SI_STATE` (slots 5/6) and `SI_CODES` (slots 7/8) lists.
-/

namespace InitECandidate.Solver.Wit
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Types

theorem slArr_of_slaW {Γ : Gam} {m : Mem} {A : BitVec 64} {n : Nat} (h : SlaW Γ m A n) :
    SlArr Γ m A n := by
  obtain ⟨hsub, hsl⟩ := h
  intro i hi
  obtain ⟨hS, ⟨y, hy, hyt, hy1, hy2⟩, hend⟩ := hsl i hi
  rcases hsub with h0 | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · omega
  have hE := heapEnd_lt
  have hlo : x.lo = A.toNat := by unfold Obj.lo; rw [hxb]
  have hc0 : x.cell (2 * i) = A + BitVec.ofNat 64 (16 * i) := by rw [(sl_cell x i).1, hxb]
  have hc1 : A + BitVec.ofNat 64 (16 * i) + BitVec.ofNat 64 8 = A + BitVec.ofNat 64 (16 * i + 8) := by
    rw [BitVec.add_assoc]
    congr 1
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
    omega
  have eP : rd m (A + BitVec.ofNat 64 (16 * i)) = slP m A i := rfl
  have eL : rd m (A + BitVec.ofNat 64 (16 * i) + BitVec.ofNat 64 8) = slL m A i := by
    rw [hc1]; rfl
  obtain ⟨hS1, hS2, hS3⟩ := hS
  refine ⟨⟨x, hx, hxt ▸ recTy_tSLA, by rw [hxt]; exact sla_heap, 2 * i,
    by unfold Obj.HasSlot; omega, by rw [hxt]; exact sla_prot _, by rw [hxt]; exact sla_prot _,
    hc0.symm, by omega, ?_, ?_, by rw [hxt]; exact ⟨by decide, by decide, by decide⟩⟩, ?_⟩
  · rw [eP]; exact hS2
  · rw [eP, eL]
    have : x.hi = x.lo + x.size := rfl
    omega
  · rw [eP, eL]
    exact Or.inr ⟨y, hy, hyt, hy1, hy2⟩

/-- The `SI_STATE` list of a `tSI` object. -/
theorem slArr_si_state {σ : Type} {Γ : Gam} {s : State σ} {o : Obj}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (ho : o ∈ Γ) (ht : o.ty = tSI) :
    SlArr Γ s.memory (txF s.memory o 5) (txF s.memory o 6).toNat := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, -, -, -, h5, -⟩ := siW_of_wf ht (hW o ho)
  exact slArr_of_slaW h5

/-- The `SI_CODES` list of a `tSI` object. -/
theorem slArr_si_codes {σ : Type} {Γ : Gam} {s : State σ} {o : Obj}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (ho : o ∈ Γ) (ht : o.ty = tSI) :
    SlArr Γ s.memory (txF s.memory o 7) (txF s.memory o 8).toNat := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, -, -, -, -, h7⟩ := siW_of_wf ht (hW o ho)
  exact slArr_of_slaW h7

end InitECandidate.Solver.Wit

#print axioms InitECandidate.Solver.Wit.slArr_of_slaW
#print axioms InitECandidate.Solver.Wit.slArr_si_state
#print axioms InitECandidate.Solver.Wit.slArr_si_codes
