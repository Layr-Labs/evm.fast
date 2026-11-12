import InitECandidate.Solver.MemSafe.Wg.CostGpr2

/-!
# Wg: the cost of `process_general_purpose_requests` (`HypGprCost`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The analyzer's bound of the two nested loops (`gprS8`). -/
def bGprLoop : Nat := 269915374621627272904488359409093887002587017596876441518170

theorem costFin_gprS8 : costFin gprS8 = some bGprLoop := by decide_cbv

/-- The cost of the four system calls and their appends. -/
def bGprTail (Bcsr : Nat) : Nat :=
  (1 + Bcsr + (bApp + (1 + Bcsr + (bApp + (1 + Bcsr + (bApp + (1 + Bcsr + (bApp + 0))))))))

/-- The cost bound of `process_general_purpose_requests`, in the bound `Bcsr` of `process_checked_system_transaction`. -/
def bGpr (Bcsr : Nat) : Nat := 1 + cAlloc + (bGprLoop + (bApp + bGprTail Bcsr))

section cg3
variable {E : EbE σ}

theorem cw_gp_tail {Bcsr : Nat} {Eo : Env} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk : BitVec 64}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hCsr : CallR (σ := σ) (nm "process_checked_system_transaction") CsrPreW (fun _ _ _ _ => False) CsrQW)
    (hCsrC : HypCsrCostW σ Bcsr)
    (hgw : gword E.s0 (nm "bo") = some bo0) (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (ho1 : Eo (nm "o1") = none) (ho2 : Eo (nm "o2") = none) (ho3 : Eo (nm "o3") = none) (ho4 : Eo (nm "o4") = none) :
    CW (TQ E Eo (GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 1) gprS30 (bGprTail Bcsr)
      (RetR E (GprD E.s0) (GprRm bo0)) := by
  have hLI := retR_locIns E (GprD E.s0) (GprRm bo0)
  have hb : ∀ f, GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f → GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f :=
    fun f h => h
  unfold gprS30 gprS31 gprS32
  refine cw_gp_csr_app (o := nm "o1") (X := nm "withdrawal_request_address") (aX := a1) (t := 1) (m := 1) hK hE0 hCsr hCsrC
    (by omega) hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS]) (locIns_resIns hLI _) (fun out1 => ?_)
  unfold gprS33 gprS34 gprS35
  refine cw_gp_csr_app (o := nm "o2") (X := nm "consolidation_request_address") (aX := a2) (t := 2) (m := 2) hK hE0 hCsr hCsrC
    (by omega) hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS]) (locIns_resIns hLI _) (fun out2 => ?_)
  unfold gprS36 gprS37 gprS38
  refine cw_gp_csr_app (o := nm "o3") (X := nm "builder_deposit_address") (aX := a3) (t := 3) (m := 3) hK hE0 hCsr hCsrC
    (by omega) hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS]) (locIns_resIns hLI _) (fun out3 => ?_)
  unfold gprS39 gprS40 gprS41
  refine cw_gp_csr_app (o := nm "o4") (X := nm "builder_exit_address") (aX := a4) (t := 4) (m := 4) hK hE0 hCsr hCsrC
    (by omega) hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS]) (locIns_resIns hLI _) (fun out4 => ?_)
  exact cw_leaf (cost_return _) (gp_ret (fun f hf => Or.inl hf))

end cg3

end InitECandidate.Solver.MemSafe.Wg
