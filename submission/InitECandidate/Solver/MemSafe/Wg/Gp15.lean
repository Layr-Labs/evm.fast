import InitECandidate.Solver.MemSafe.Wg.Gp14

/-!
# Wg: `process_general_purpose_requests`, the tail (four system calls) and the return
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem gs_bal {Γ0 : Gam} {s0 : State σ} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk : BitVec 64} :
    BalS (GS Γ0 s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) := by
  refine ⟨⟨bs, ?_⟩, ⟨ba, ?_⟩, ⟨bk, ?_⟩, ⟨bi, ?_⟩, ⟨bs2, ?_⟩, ⟨sk, ?_⟩⟩ <;> simp [GS]

section g15
variable {E : EbE σ}

/-- The return of `process_general_purpose_requests`: the count cell holds `k ≤ 5`. -/
def GprRm (bo0 : BitVec 64) : Mem → Prop := fun m => ∃ k : Nat, k ≤ 5 ∧ rd m (bo0 + BitVec.ofNat 64 64) = BitVec.ofNat 64 k

theorem gp_ret {Eo : Env} {Sk : FS} {bo0 : BitVec 64} {Dout : BitVec 64 → Prop}
    (hfr : ∀ f, FrS E.Γ0 E.s0 Dout f → Sk f) :
    Hoare σ guestCtx (TQ E Eo Sk bo0 5) (.return (cw 0)) (RetR E Dout (GprRm bo0)) := by
  intro s hs ⟨kx, hk, hp⟩ ht
  refine (hn_retR (S := SkX Sk bo0 kx) (fun f hf => Or.inl (hfr f hf)) ?_) s hs hp ht
  intro Γ p u hL
  have := (hL _ (Or.inr rfl : SkX Sk bo0 kx (Fct.cellv (bo0 + BitVec.ofNat 64 64) kx))).1
  refine ⟨kx.toNat, hk, ?_⟩
  rw [this]
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ofNat]
  exact (Nat.mod_eq_of_lt (by omega)).symm

theorem gp_tail {Eo : Env} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk : BitVec 64}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hCsr : CallR (σ := σ) (nm "process_checked_system_transaction") CsrPreW (fun _ _ _ _ => False) CsrQW)
    (hgw : gword E.s0 (nm "bo") = some bo0) (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (ho1 : Eo (nm "o1") = none) (ho2 : Eo (nm "o2") = none) (ho3 : Eo (nm "o3") = none) (ho4 : Eo (nm "o4") = none) :
    Hoare σ guestCtx (TQ E Eo (GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 1) gprS30
      (RetR E (GprD E.s0) (GprRm bo0)) := by
  have hLI := retR_locIns E (GprD E.s0) (GprRm bo0)
  have hb : ∀ f, GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f → GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f :=
    fun f h => h
  unfold gprS30 gprS31 gprS32
  refine gp_csr_app (o := nm "o1") (X := nm "withdrawal_request_address") (aX := a1) (t := 1) (m := 1) hK hE0 hCsr (by omega)
    hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS]) ho1 (locIns_resIns hLI _) (fun out1 => ?_)
  unfold gprS33 gprS34 gprS35
  refine gp_csr_app (o := nm "o2") (X := nm "consolidation_request_address") (aX := a2) (t := 2) (m := 2) hK hE0 hCsr (by omega)
    hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS]) (by simp (config := { decide := true }) [Env.set, ho2])
    (locIns_resIns hLI _) (fun out2 => ?_)
  unfold gprS36 gprS37 gprS38
  refine gp_csr_app (o := nm "o3") (X := nm "builder_deposit_address") (aX := a3) (t := 3) (m := 3) hK hE0 hCsr (by omega)
    hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS])
    (by simp (config := { decide := true }) [Env.set, ho3]) (locIns_resIns hLI _) (fun out3 => ?_)
  unfold gprS39 gprS40 gprS41
  refine gp_csr_app (o := nm "o4") (X := nm "builder_exit_address") (aX := a4) (t := 4) (m := 4) hK hE0 hCsr (by omega)
    hgw hrq hb gs_avoid gs_tidy gs_safe gs_bal (by simp [GS])
    (by simp (config := { decide := true }) [Env.set, ho4]) (locIns_resIns hLI _) (fun out4 => ?_)
  exact gp_ret (fun f hf => Or.inl hf)

end g15

end InitECandidate.Solver.MemSafe.Wg
