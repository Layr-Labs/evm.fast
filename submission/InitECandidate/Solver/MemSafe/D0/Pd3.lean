import InitECandidate.Solver.MemSafe.D0.PlKit

/-!
# `prepare_dispatch`: the `target == 0` branch and small facts
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem evs_lLoad1 {s : State σ} {mg : BitVec 64} {off : Nat}
    (hm : s.locals.lookup (nm "msg") = some (.val (.word mg))) {vs : List (ValueHOL 64)}
    (h : evs s [lLoad "msg" off] = some vs) : vs = [.val (.word (fld s.memory mg off))] := by
  obtain ⟨a, vs1, rfl, ha, h1⟩ := evs_cons_inv h
  rw [evs_zero h1, ev_lLoad_eq hm ha]

theorem evs_lv1 {s : State σ} {x : MlS} {w : BitVec 64}
    (hx : s.locals.lookup x = some (.val (.word w))) {vs : List (ValueHOL 64)}
    (h : evs s [lv x] = some vs) : vs = [.val (.word w)] := by
  rw [evs_cons (by rw [ev_lv]; exact hx) evs_nil] at h
  exact (Option.some.inj h).symm

theorem argsOK_buf1 {Γ : Gam} {p : Ptrs} {w : BitVec 64} (h : BufOK guestC Γ p w.toNat 20) :
    ArgsOK guestC Γ p [.buf 20] [.val (.word w)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; exact ⟨w, rfl, h⟩
  · simp at hpt

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- The message's `CALLER` / `CURRENT_TARGET` blocks are `BufOK 20`. -/
theorem msgbuf (hfs : fs = (e, c) :: rest) {u : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u)
    {Γ1 : Gam} {p1 : Ptrs} (hp : ptrsOf u = some p1) (hE : ChainE GP GR Γ1 u fs) {off : Nat}
    (ho : off ∈ msgXOffs) : BufOK guestC Γ1 p1 (fld u.memory mg off).toNat 20 := by
  have h112 : fld u.memory e 112 = mg := hu.2.choose_spec.choose_spec.2.2.2.2
  obtain ⟨-, hB, -, -⟩ := gp_head hfs hp hE
  have hmo : msgOf u.memory (e, c) = mg := h112
  rw [hmo] at hB
  exact hB off ho

/-- `if e != 0 { charge_state_gas(SG_NEW_ACCOUNT); } return 0`. -/
theorem pd_zero_tail (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (.ite (.cmp .notEqual (lv (nm "e")) (cw 0)) (callD (nm "charge_state_gas") [cw 183600]) .skip)
        (.return (cw 0)))
      (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) :=
  pl_seq (pl_ite (pl_call hm (hoareG_kp_csg hfs hu)) (pl_skip hu hm)) fun u hk _ => pl_ret hk

/-- The `target == 0` branch. -/
theorem pd_zero (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ guestCtx (fun t => t = u0) pdZero (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) := by
  unfold pdZero
  refine pl_dec hfs gpsa_sum gpsa_fp rfl hu hm ?_ (fun _ _ _ _ _ _ h => h) (by decide) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lLoad1 hm hvs]
    exact ⟨argsOK_buf1 (msgbuf hfs hu hp hE (by simp [msgXOffs])), fun _ => jrNZ_congr rfl hu.1⟩
  · intro v st hst _ _ hm1
    refine pl_dec hfs aie_kp aie_fp rfl (kp_locals (Hooks.frameCfg_guestHooksR (σ := σ)).hooks hst _)
      hm1 ?_ (fun _ _ _ _ _ _ h => h) (by decide) ?_
    · intro vs hvs Γ1 p1 hr hp hG hL hE
      exact ⟨argsOK_any (by simp) (by rw [evs_len hvs]; rfl), fun _ => jrNZ_congr rfl hst.1⟩
    · intro v' st' hst' _ _ hm2
      exact pd_zero_tail hfs (kp_locals (Hooks.frameCfg_guestHooksR (σ := σ)).hooks hst' _) hm2

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.pd_zero
