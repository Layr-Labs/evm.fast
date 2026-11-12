import InitECandidate.Solver.MemSafe.D0.Pd6

/-!
# `prepare_dispatch`: the body (`pd_body`) and its summary
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

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- After `var msg = ev[EV_MSG]`. -/
theorem pd_main (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) (hm : MsgL mg u0.locals) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (.ite (.cmp .equal (lLoad "msg" 24) (cw 0)) pdZero .skip)
        (.dec (nm "recipient") .one (lLoad "msg" 32)
          (.decCall (nm "vz") .one (nm "u256_is_zero")
            [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "msg"), cw 56])] pdVz)))
      (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (MsgL mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine plp_seq (Pl := MsgL mg) (plp_ite (pd_zero hfs hu hm) (plp_skip hu hm)) fun u hk hl => ?_
  refine Struct.hoareG_decN (fun r t o h => plp_res (kp_locF hH) (nm "recipient")
    (fun L o hL => msgL_res (by decide) L o hL) o h) fun s _ hs v hv hsh => ?_
  subst s
  have hv' := ev_lLoad_eq hl hv
  subst hv'
  have hk' := hk
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hk
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hself : KP HJ gw Γ1 u p1 fs e mg u := ⟨hJ, Γ1, p1, runT_refl hG1 hp1, hch, hE, le_refl _, h112⟩
  have hbuf := msgbuf hfs hself hp1 hE (off := 32) (by simp [msgXOffs])
  set R := fld u.memory mg 32 with hRdef
  set s1 := setVarHOLFinite (nm "recipient") (.val (.word R)) u with hs1
  have hu1 : KP HJ gw Γ1 u p1 fs e mg s1 := kp_locals hH hself s1.locals
  have hl1 : RecL mg R s1.locals :=
    ⟨by rw [hs1, lk_set_ne _ _ (by decide)]; exact hl, lk_set_self _ _ _⟩
  refine hoareG_conseq (P := fun t => t = s1) ?_ (fun _ _ h => h)
    (fun r t _ _ h => plp_mono (fun t ht => kp_trans hk' hrun ht) (fun L h => h) h)
  refine plp_dec hfs uz_kp uz_fp rfl hu1 ?_ (fun _ _ _ _ _ _ h => h)
    (fun L o hL => msgL_res (by decide) L o hL) ?_
  · intro vs hvs Γ1' p1' hr hp hG hL hE'
    exact ⟨argsOK_any (by simp) (by rw [evs_len hvs]; rfl), fun _ => jrNZ_congr rfl hu1.1⟩
  · intro v st hst _ hsh
    obtain ⟨vw, rfl⟩ := val_of_shapeEq_one' hsh
    refine pd_vz hRec hfs (kp_locals hH hst _) hG1 ?_ hbuf
    exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hl1.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hl1.2⟩

/-- **The body of `prepare_dispatch`**: on every non-abortive result, `KP`. -/
theorem pd_body (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest)
    (hs0 : KP HJ gw Γ0 s0 p0 fs e (fld s0.memory e 112) s0) :
    HoareG σ guestCtx (fun u => u = s0) pdBody
      (fun ro t => ∀ r, ro = some r → ¬ Abortive r →
        KP HJ gw Γ0 s0 p0 fs e (fld s0.memory e 112) t) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  set mg := fld s0.memory e 112 with hmg
  have he0 : gword s0 nmEv = some e := by
    obtain ⟨-, Γ1, p1, -, hch, -⟩ := hs0
    exact ev_head (hfs ▸ hch)
  rw [pdBody_eq]
  unfold pdBodyX
  refine hoareG_dec fun s _ hs vm hvm _ => ?_
  rw [hs] at *; clear hs
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he0 hvm
  refine hoareG_conseq (Q := fun ro t => ∀ r, ro = some r → ¬ Abortive r →
      KP HJ gw Γ0 s0 p0 fs e mg t) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h r hr hna => kp_locals hH (h r hr hna) _)
  have hu1 := kp_locals hH hs0 (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
  have main := pd_main hRec hfs hu1 (lk_set_self _ _ _ : MsgL mg
    (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals)
  refine hoareG_conseq main (fun _ _ h => h) (fun ro t _ _ h r hr hna => ?_)
  rcases h with ⟨h0, -⟩ | ⟨-, hk⟩
  · rw [h0] at hr; cases hr
  · exact hk r hr hna

end

/-- `prepare_dispatch`'s precondition: the chain extension, `JrNZ`. -/
def PdPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  vs = [] ∧ ChainX guestC tEV tCK GP GR Γ s ∧ JrNZ s

/-- `prepare_dispatch`'s post: the chain extension, `Φ` not raised, `JrNZ`, on a return or an
`EvmErr`. -/
def PdQ (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s ∧ JrNZ t ∧ RootK s t ∧
      ∀ e', gword s nmEv = some e' → fld t.memory e' 112 = fld s.memory e' 112) ∧
    (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s ∧ JrNZ t ∧
      RootK s t ∧ ∀ e', gword s nmEv = some e' → fld t.memory e' 112 = fld s.memory e' 112)

/-- **`prepare_dispatch`'s summary on the chain extension.** -/
theorem pd_sumSpec (hRec : RecNoMsg σ) :
    SumSpecT σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "prepare_dispatch") (sg0 [])
      PdPre PdQ := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _ ⟨hvs, ⟨fs, hch0, hE0⟩, hJ0⟩
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_pd hl
  have ⟨p, hps, _⟩ := hG
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch0.chain
  have hk0 : KP (Hooks.guestHooksR (σ := σ)) [] Γ s0 p fs e (fld s0.memory e 112) s0 :=
    ⟨hJ0, Γ, p, runT_refl hG hps, hch0, hE0, le_refl _, rfl⟩
  have H0 := pd_body hRec hfs hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  have hkp := H0 r rfl hna
  obtain ⟨Γ', p', hrun, hx, hΦ, hRt⟩ := kLeX_of_kp hkp hch0.chain
  obtain ⟨-, Γ1, p1, -, -, -, -, h112k⟩ := id hkp
  have he : gword s0 nmEv = some e := ev_head (hfs ▸ hch0)
  exact ⟨Γ', p, p', sumCoreT_of_runT (sg := sg0 []) rfl rfl hrun,
    fun _ _ => ⟨hx, hΦ, hkp.1, hRt, fun e' he' => by
      rw [he, Option.some.injEq] at he'; subst he'; exact h112k⟩,
    fun _ _ => ⟨hx, hΦ, hkp.1, hRt, fun e' he' => by
      rw [he, Option.some.injEq] at he'; subst he'; exact h112k⟩⟩

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.pd_body
#print axioms InitECandidate.Solver.MemSafe.D0.pd_sumSpec
