import InitECandidate.Solver.MemSafe.D0.Pd5

/-!
# `prepare_dispatch`: the delegation branch with `alloc(24)`, and the nonzero-target path
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

/-- Locals before the delegation branch. -/
def PreDaL (mg DA C N : BitVec 64) (L : Locs) : Prop :=
  L.lookup (nm "msg") = some (.val (.word mg)) ∧ L.lookup (nm "da") = some (.val (.word DA)) ∧
    L.lookup (nm "code") = some (.val (.word C)) ∧ L.lookup (nm "code_n") = some (.val (.word N))

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- **The delegation branch** (`alloc(24)` included). -/
theorem pd_da (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {DA C N : BitVec 64} (hl : PreDaL mg DA C N u0.locals) :
    HoareG σ guestCtx (fun t => t = u0) pdDa (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (TailE mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨hm, hda, hC, hN⟩ := hl
  rw [pdDa_eq]
  refine hoareG_kp_alloc24 hfs hu (Qk := PLP (KP HJ gw Γ0 s0 p0 fs e mg) (TailE mg)) ?_
    (fun ro t hro h => Or.inr ⟨hro, h⟩)
  intro q st hkd
  have hkd' := hkd
  obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γa, pa, hfr, -⟩ := hkd
  have hG2 := hrun.2.2.2.2.2.1
  have hp2 := hrun.2.1
  have hbuf : BufOK guestC Γ2 p2 q.toNat 20 := freshB_bufOK hG2 hp2 hfr (off := 0) (n := 20) (by omega)
  have hu' : KP HJ gw Γ2 st p2 fs e mg st := ⟨hJ, Γ2, p2, runT_refl hG2 hp2, hch, hE, le_refl _, h112⟩
  have hl' : DaL mg q DA C N (setVarHOLFinite (nm "daddr") (.val (.word q))
      { st with locals := u0.locals }).locals := by
    refine ⟨?_, lk_set_self _ _ _, ?_, ?_, ?_⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_conseq (pd_da1 hRec hfs (kp_locals hH hu' (setVarHOLFinite (nm "daddr")
      (.val (.word q)) { st with locals := u0.locals }).locals) hG2 hl' hbuf)
    (fun _ _ h => h) (fun r t _ _ h => ?_)
  exact plp_mono (fun t ht => kp_trans (kp_of_kpd hkd') hrun ht) (fun L h => h)
    (plp_res (kp_locF hH) (nm "daddr")
      (fun L o hL => tailE_res L o (by decide) (by decide) (by decide) hL) _ h)

end

theorem msgL_res {mg : BitVec 64} {n : MlS} (hn : n ≠ nm "msg") (L : Locs) (o : Option (ValueHOL 64))
    (h : MsgL mg L) : MsgL mg (L.resVarEq (n, o)) := by
  unfold MsgL at *; rw [lookup_resVarEq_ne _ _ hn]; exact h

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- From `var code = rcode.0` on: delegation resolution, the delegation branch, the tail. -/
theorem pd_rc (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {c0 c1 : BitVec 64} (hm : MsgL mg u0.locals)
    (hr : u0.locals.lookup (nm "rcode") = some (wv [c0, c1])) (hb : c1.toNat + 63 < 2 ^ 64) :
    HoareG σ guestCtx (fun t => t = u0) pdRc (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (MsgL mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have e0 : ev u0 (.rfield 0 (lv (nm "rcode"))) = some (.val (.word c0)) :=
    Struct.ev_wv_word hr (i := 0) (by simp)
  have e1 : ev u0 (.rfield 1 (lv (nm "rcode"))) = some (.val (.word c1)) :=
    Struct.ev_wv_word hr (i := 1) (by simp)
  unfold pdRc
  refine Struct.hoareG_decN (fun r t o h => plp_res (kp_locF hH) (nm "code")
    (fun L o hL => msgL_res (by decide) L o hL) o h) fun s _ hs v hv hsh => ?_
  subst s
  rw [e0] at hv
  obtain rfl := (Option.some.inj hv).symm
  set u1 := setVarHOLFinite (nm "code") (.val (.word c0)) u0 with hu1def
  have hu1 : KP HJ gw Γ0 s0 p0 fs e mg u1 := kp_locals hH hu u1.locals
  have hm1 : MsgL mg u1.locals := by
    unfold MsgL; rw [hu1def, lk_set_ne _ _ (by decide)]; exact hm
  have hr1 : u1.locals.lookup (nm "rcode") = some (wv [c0, c1]) := by
    rw [hu1def, lk_set_ne _ _ (by decide)]; exact hr
  have hc1 : u1.locals.lookup (nm "code") = some (.val (.word c0)) := lk_set_self _ _ _
  have e1' : ev u1 (.rfield 1 (lv (nm "rcode"))) = some (.val (.word c1)) :=
    Struct.ev_wv_word hr1 (i := 1) (by simp)
  refine Struct.hoareG_decN (fun r t o h => plp_res (kp_locF hH) (nm "code_n")
    (fun L o hL => msgL_res (by decide) L o hL) o h) fun s _ hs v hv hsh => ?_
  subst s
  rw [e1'] at hv
  obtain rfl := (Option.some.inj hv).symm
  set u2 := setVarHOLFinite (nm "code_n") (.val (.word c1)) u1 with hu2def
  have hu2 : KP HJ gw Γ0 s0 p0 fs e mg u2 := kp_locals hH hu1 u2.locals
  have hm2 : MsgL mg u2.locals := by
    unfold MsgL; rw [hu2def, lk_set_ne _ _ (by decide)]; exact hm1
  have hr2 : u2.locals.lookup (nm "rcode") = some (wv [c0, c1]) := by
    rw [hu2def, lk_set_ne _ _ (by decide)]; exact hr1
  have hc2 : u2.locals.lookup (nm "code") = some (.val (.word c0)) := by
    rw [hu2def, lk_set_ne _ _ (by decide)]; exact hc1
  have hn2 : u2.locals.lookup (nm "code_n") = some (.val (.word c1)) := lk_set_self _ _ _
  refine plp_dec hfs gdca_kp gdca_fp rfl hu2 ?_ (fun _ _ _ _ _ _ h => h)
    (fun L o hL => msgL_res (by decide) L o hL) ?_
  · intro vs hvs Γ1 p1 hr' hp hG hL hE
    exact ⟨argsOK_any (by simp) (by rw [evs_len hvs]; rfl), fun _ => jrNZ_congr rfl hu2.1⟩
  · intro v st hst _ hsh
    obtain ⟨dw, rfl⟩ := val_of_shapeEq_one' hsh
    set u3 := setVarHOLFinite (nm "da") (.val (.word dw)) { st with locals := u2.locals } with hu3def
    have hu3 : KP HJ gw Γ0 s0 p0 fs e mg u3 := kp_locals hH hst u3.locals
    have hm3 : u3.locals.lookup (nm "msg") = some (.val (.word mg)) := by
      rw [hu3def, lk_set_ne _ _ (by decide)]; exact hm2
    have hd3 : u3.locals.lookup (nm "da") = some (.val (.word dw)) := lk_set_self _ _ _
    have hc3 : u3.locals.lookup (nm "code") = some (.val (.word c0)) := by
      rw [hu3def, lk_set_ne _ _ (by decide)]; exact hc2
    have hn3 : u3.locals.lookup (nm "code_n") = some (.val (.word c1)) := by
      rw [hu3def, lk_set_ne _ _ (by decide)]; exact hn2
    refine plp_seq (Pl := TailE mg) (plp_ite (pd_da hRec hfs hu3 ⟨hm3, hd3, hc3, hn3⟩)
      (plp_skip hu3 ⟨c0, c1, ⟨hm3, hc3, hn3⟩, hb⟩)) fun u4 hk4 hl4 => ?_
    obtain ⟨C, N, hlT, hNb⟩ := hl4
    exact pd_tail hRec hfs hk4 hlT hNb

end

/-- Locals after `var recipient = …`. -/
def RecL (mg R : BitVec 64) (L : Locs) : Prop :=
  L.lookup (nm "msg") = some (.val (.word mg)) ∧ L.lookup (nm "recipient") = some (.val (.word R))

theorem recL_res {mg R : BitVec 64} {n : MlS} (h1 : n ≠ nm "msg") (h2 : n ≠ nm "recipient")
    (L : Locs) (o : Option (ValueHOL 64)) (h : RecL mg R L) : RecL mg R (L.resVarEq (n, o)) := by
  obtain ⟨a, b⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact a, by rw [lookup_resVarEq_ne _ _ h2]; exact b⟩

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- After `var recipient = …`: the value check, the account-alive charge, `ext_code_of`. -/
theorem pd_vz (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {R : BitVec 64}
    (hl : RecL mg R u0.locals) (hbuf : BufOK guestC Γ0 p0 R.toNat 20) :
    HoareG σ guestCtx (fun t => t = u0) pdVz (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (MsgL mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨hm, hR⟩ := hl
  unfold pdVz
  -- the account-alive part
  have hA : ∀ u : State σ, KP HJ gw Γ0 s0 p0 fs e mg u → RecL mg R u.locals →
      HoareG σ guestCtx (fun t => t = u)
        (.decCall (nm "alive") .one (nm "is_account_alive") [lv (nm "recipient")]
          (.ite (.cmp .equal (lv (nm "alive")) (cw 0)) (callD (nm "charge_state_gas") [cw 183600]) .skip))
        (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (RecL mg R)) := by
    intro u hk hl'
    refine plp_dec hfs iaa_kp iaa_fp rfl hk ?_ (fun _ _ _ _ _ _ h => h)
      (fun L o hL => recL_res (by decide) (by decide) L o hL) ?_
    · intro vs hvs Γ1 p1 hr hp hG hL hE
      rw [evs_lv1 hl'.2 hvs]
      exact ⟨argsOK_buf1 (bufOK_runT hG0 hr hbuf), fun _ => jrNZ_congr rfl hk.1⟩
    · intro v st hst _ _
      have hS := kp_locals hH hst (setVarHOLFinite (nm "alive") v { st with locals := u.locals }).locals
      have hlS : RecL mg R (setVarHOLFinite (nm "alive") v { st with locals := u.locals }).locals :=
        ⟨by rw [lk_set_ne _ _ (by decide)]; exact hl'.1, by rw [lk_set_ne _ _ (by decide)]; exact hl'.2⟩
      exact plp_ite (plp_ps hlS (hoareG_kp_csg hfs hS)) (plp_skip hS hlS)
  refine plp_seq (Pl := RecL mg R) (plp_ite (hA u0 hu ⟨hm, hR⟩) (plp_skip hu ⟨hm, hR⟩))
    fun u1 hk1 hl1 => ?_
  refine plp_dec hfs eco_kp eoc_fp rfl hk1 ?_ (fun _ _ _ _ _ _ h => h)
    (fun L o hL => msgL_res (by decide) L o hL) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv1 hl1.2 hvs]
    exact ⟨argsOK_buf1 (bufOK_runT hG0 hr hbuf), fun _ => jrNZ_congr rfl hk1.1⟩
  · intro v st hst hq hsh
    obtain ⟨x, y, rfl⟩ := wv2_of hsh
    have hy : y.toNat + 63 < 2 ^ 64 := by
      obtain ⟨vs, callee, Γ1, Γ2, hvs, hQ⟩ := hq
      exact hQ x y rfl
    refine pd_rc hRec hfs (kp_locals hH hst _) (c0 := x) (c1 := y) ?_ (lk_set_self _ _ _) hy
    unfold MsgL; rw [lk_set_ne _ _ (by decide)]; exact hl1.1

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.pd_da
#print axioms InitECandidate.Solver.MemSafe.D0.pd_rc
#print axioms InitECandidate.Solver.MemSafe.D0.pd_vz
