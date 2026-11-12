import InitECandidate.Solver.MemSafe.D0.PlKit2
import InitECandidate.Solver.MemSafe.D0.Pd2
import InitECandidate.Solver.MemSafe.D0.Pd3

/-!
# `prepare_dispatch`: the tail (`msg` / `ev` stores and `compute_jumpdests`)
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

theorem hx_lv {u : State σ} {x : MlS} {w : BitVec 64} (h : u.locals.lookup x = some (.val (.word w)))
    {v : ValueHOL 64} (hv : ev u (lv x) = some v) : ∃ y, v = .val (.word y) := by
  rw [ev_lv, h] at hv; exact ⟨w, (Option.some.inj hv).symm⟩

theorem evs_lv2 {u : State σ} {x y : MlS} {a b : BitVec 64}
    (hx : u.locals.lookup x = some (.val (.word a))) (hy : u.locals.lookup y = some (.val (.word b)))
    {vs : List (ValueHOL 64)} (h : evs u [lv x, lv y] = some vs) :
    vs = [.val (.word a), .val (.word b)] := by
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv h
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  rw [evs_zero h2]
  rw [ev_lv, hx] at hp; rw [ev_lv, hy] at hq
  rw [← Option.some.inj hp, ← Option.some.inj hq]

/-- Locals at the tail: `msg`, `code`, `code_n`. -/
def TailL (mg C N : BitVec 64) (L : Locs) : Prop :=
  L.lookup (nm "msg") = some (.val (.word mg)) ∧ L.lookup (nm "code") = some (.val (.word C)) ∧
    L.lookup (nm "code_n") = some (.val (.word N))

theorem tailL_of {mg C N : BitVec 64} {u v : State σ} (h : v.locals = u.locals)
    (x : TailL mg C N u.locals) : TailL mg C N v.locals := by rw [h]; exact x

def MsgL (mg : BitVec 64) (L : Locs) : Prop := L.lookup (nm "msg") = some (.val (.word mg))

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- The tail: `msg[112..] / ev[48..80]` stores, `compute_jumpdests`. -/
theorem pd_tail (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {C N : BitVec 64} (hl : TailL mg C N u0.locals)
    (hNb : N.toNat + 63 < 2 ^ 64) :
    HoareG σ guestCtx (fun t => t = u0) pdTail (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (MsgL mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨hm, hC, hN⟩ := hl
  unfold pdTail
  refine plp_seq_ps (Pl := TailL mg C N) ⟨hm, hC, hN⟩
    (hoareG_kpStMsg hRec hfs hu hm (off := 112) (Or.inr (Or.inr (Or.inl rfl)))
      (fun v hv => hx_lv hC hv)) fun u1 hk1 hl1 => ?_
  obtain ⟨hm1, hC1, hN1⟩ := tailL_of hl1 ⟨hm, hC, hN⟩
  refine plp_seq_ps (Pl := TailL mg C N) ⟨hm1, hC1, hN1⟩
    (hoareG_kpStMsg hRec hfs hk1 hm1 (off := 120) (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      (fun v hv => hx_lv hN1 hv)) fun u2 hk2 hl2 => ?_
  obtain ⟨hm2, hC2, hN2⟩ := tailL_of hl2 ⟨hm1, hC1, hN1⟩
  refine plp_seq_ps (Pl := TailL mg C N) ⟨hm2, hC2, hN2⟩
    (hoareG_kpStEv hfs hk2 (off := 48) (Or.inl rfl) (fun v hv => hx_lv hC2 hv)) fun u3 hk3 hl3 => ?_
  obtain ⟨hm3, hC3, hN3⟩ := tailL_of hl3 ⟨hm2, hC2, hN2⟩
  refine plp_seq_ps (Pl := TailL mg C N) ⟨hm3, hC3, hN3⟩
    (hoareG_kpStEv hfs hk3 (off := 56) (Or.inr (Or.inl rfl)) (fun v hv => hx_lv hN3 hv))
    fun u4 hk4 hl4 => ?_
  obtain ⟨hm4, hC4, hN4⟩ := tailL_of hl4 ⟨hm3, hC3, hN3⟩
  refine plp_dec hfs jd_sa jd_fp rfl hk4 ?_ (fun _ _ _ _ _ _ h => h.elim) (fun L o hL => ?_) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv2 hC4 hN4 hvs]
    refine ⟨argsOK_any (by simp [Helpers.sigJumpdests]) rfl, fun callee => ?_⟩
    intro N' hN'
    simp [argW, wordOf] at hN'
    subst hN'; exact hNb
  · unfold MsgL at hL ⊢
    rw [lookup_resVarEq_ne _ _ (by decide)]; exact hL
  · intro v st hst _ hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hst1 := kp_locals hH hst (setVarHOLFinite (nm "jd") (.val (.word w))
      { st with locals := u4.locals }).locals
    have hj : (setVarHOLFinite (nm "jd") (.val (.word w)) { st with locals := u4.locals }).locals.lookup
        (nm "jd") = some (.val (.word w)) := lk_set_self _ _ _
    have hm5 : MsgL mg (setVarHOLFinite (nm "jd") (.val (.word w)) { st with locals := u4.locals }).locals := by
      unfold MsgL; rw [lk_set_ne _ _ (by decide)]; exact hm4
    refine plp_seq_ps (Pl := MsgL mg) hm5
      (hoareG_kpStEv hfs hst1 (off := 80) (Or.inr (Or.inr (Or.inl rfl)))
        (fun v hv => hx_lv hj hv)) fun u5 hk5 hl5 => ?_
    exact plp_ret hk5

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.pd_tail
