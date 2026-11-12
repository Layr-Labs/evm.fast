import InitECandidate.Solver.Band6.Rules
import InitECandidate.Solver.Band5.GetPreTxStorage

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
# `get_pre_tx_storage` at the key-out signature (Band6)

`CondCost` of `get_pre_tx_storage` for an address that is not a writable buffer but a source key
(`Bal.GsPre`: `BsNN`, `SrcKey Γ addr 20 tHTb20`), at the signature `storWgsSig` (all arguments `any`).
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band5 (gptsBody gptsB code_gpts)

variable {σ : Type}

/-- The thread invariant: `bs` a block-state object, `addr` a source key held in the local `addr`. -/
def AK (ADDR : BitVec 64) (s : State σ) (Γ : Gam) (_p : Ptrs) : Prop :=
  BsNN s Γ ∧ SrcKey Γ ADDR 20 tHTb20 ∧ s.locals.lookup (nm "addr") = some (.val (.word ADDR))

theorem ak_step {ADDR : BitVec 64} {s s' : State σ} {Γ Γ' : Gam} {p p' : Ptrs} (h : AK ADDR s Γ p)
    (hs : Stp Γ Γ' p p') (hg : ∀ g ∈ bal4, s'.globals.lookup g = s.globals.lookup g)
    (hl : s'.locals.lookup (nm "addr") = s.locals.lookup (nm "addr")) : AK ADDR s' Γ' p' :=
  ⟨bsNN_step h.1 hs.2.2.2.1 hg, srcKey_ext hs.2.2.2.1 h.2.1, by rw [hl]; exact h.2.2⟩

set_option linter.unusedVariables false in
theorem gptsK_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (guestHooksR (σ := σ)) (nm "get_pre_tx_storage")
      storWgsSig GsPre gptsB := by
  have hH := guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_gpts (by decide) hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, ADDR, KEY, hvs, hBs, hkey⟩ hg
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (guestHooksR (σ := σ)) (AK ADDR))
      gptsBody gptsB := by
    unfold gptsBody gptsB
    refine costP_decCall_SG (Aux' := AK ADDR) (sa_of_cs sl_cs) (by decide_cbv)
      (PreC := fun _ _ => True)
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "stor_lookup") (B := bStor) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ _ vs hvs callee => ⟨hargs_any (by simp [slSg]) rfl hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v _ hG hA hvs _ hcore hq hgw =>
        ak_step hA (stp_of_core_s hH hG hcore) hgw (lk_sv (by decide) v st s.locals)) ?_
    refine costP_guard ?_
    refine costP_seq_callD_SG (Aux' := AK ADDR) (sumSpec_record_pre_state_read_k (σ := σ)) (by decide_cbv) (PreC := fun _ _ => True)
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "record_pre_state_read") (B := bRpsr) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p _ _ hA vs hvs callee => by
        obtain rfl := evs_lv1 hA.2.2 hvs
        exact ⟨hargs_any (by simp [rprSig]) rfl hvs, ADDR, rfl, hA.1, hA.2.1⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs _ hcore hq hgw =>
        ak_step hA (stp_of_core_s hH hG hcore) hgw rfl) ?_
    refine Band.costP_decCall (wgs_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, -⟩ := hP
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        hargs_any (by simp [wgsSig]) rfl hvs, trivial⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_return _)
  exact main s hs ⟨Γ, p, hG, hp, hBs, hkey, by rw [hloc]; exact hA⟩ hg

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.gptsK_condCost
