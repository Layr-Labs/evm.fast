import InitECandidate.Solver.MemSafe.Dn.Resolve2
import InitECandidate.Solver.MemSafe.Dn.Arr
import InitECandidate.Solver.Spec.Mpt.Decode.StepMain
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `_decode_step` at the final hook family (shared pieces)

* table summaries at `guestHooksR`: `rlp_decode_fully`, `rlp_list_to_slices`, `scratch_alloc`
  (`tab26`), `compact_to_nibbles` (`MptH`);
* `gp_fail`: `mpt_fail(k);` never returns, so any statement post holds after it;
* the summary's precondition `DsPre` (a located input slice) and value fact `DsRx`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

theorem rdf_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_decode_fully")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem rlts_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_list_to_slices")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem scrAlloc_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "scratch_alloc")
      ⟨[.any], [.freshArg 0 1 0], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem ctn_R {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "compact_to_nibbles")
      MptH.ctnSig MptH.CtnPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  MptH.sumSpec_compact_to_nibbles Rec.foldOK_guestR mptFail_R

/-- **`mpt_fail(k);`**: it never returns. -/
theorem gp_fail {sg : Sig} {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    (k : Nat) {L L' : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC Hooks.guestHooksR sg [] vs s0 Γ0 p0) L E)
      (Spec.callD (nm "mpt_fail") [cw k])
      (GP (actOf Types.guestC Hooks.guestHooksR sg [] vs s0 Γ0 p0) L' E' Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  refine hoareG_conseq (gp_call (E' := fun _ _ _ => False) (Rv := Rv) ha (sumA_of_csumm mptFail_R)
    (Spec.Mpt.Leaves.funSpec_mpt_fail_keep hX) (by simp) (by simp)
    (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs callee r Γ Γ' q q' _ _ _ _ _ hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
      fun ⟨v, hv⟩ => absurd hv (hLc.2.2 v)⟩)) (fun _ _ h => h) (fun r t _ _ h => ?_)
  refine ⟨fun hr => ?_, h.2⟩
  obtain ⟨-, Γ, q, -, -, -, hf⟩ := h.1 hr
  exact hf.elim

/-- The precondition: `[db, P, N]` with `[P, P + N)` in the heap below `heap_ptr`. -/
def DsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ db P N : BitVec 64, vs = [.val (.word db), .val (.word P), .val (.word N)] ∧
    heapBase ≤ P.toNat ∧ (∃ p : Ptrs, ptrsOf s = some p ∧ P.toNat + N.toNat ≤ p.hp) ∧
    Hooks.VInR Types.tVAL Γ P N

/-- The value fact: a node result fits `nodeU`; a record result is a fresh 88-byte block outside
`Γ'`, not allocated at the entry, allocated at the exit; a branch record (kind `≠ 1`) holds an
`NBRANCH` object at `+16` and slot `0` at `+32`. -/
def DsRx (_ : List (ValueHOL 64)) (p0 : Ptrs) (Γ' : Gam) (p' : Ptrs) (M : Mem) (v : ValueHOL 64) :
    Prop :=
  ∀ d0 d1 : BitVec 64, v = .rStruct [.val (.word d0), .val (.word d1)] →
    (d0 = 0 → Fits Γ' Types.nodeU d1) ∧
    (d0 ≠ 0 → d1.toNat % 8 = 0 ∧ heapEnd ≤ d1.toNat ∧
      (∀ x : BitVec 64, Overlap d1.toNat 88 x → ¬ InObj Γ' x.toNat ∧ ¬ p0.Allocated x.toNat ∧
        p'.Allocated x.toNat) ∧
      (rd M (d1 + 8) ≠ 1 → (∃ o ∈ Γ', o.base = rd M (d1 + 16) ∧ o.ty = Types.tNBRANCH ∧
          ∀ x : BitVec 64, Overlap o.base.toNat 176 x → ¬ p0.Allocated x.toNat) ∧
        rd M (d1 + 32) = 0) ∧ RecS Γ' p' M d1)

def dsSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gp_fail
