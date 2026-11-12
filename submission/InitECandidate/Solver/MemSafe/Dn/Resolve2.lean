import InitECandidate.Solver.MemSafe.Dn.Kit2

set_option autoImplicit false

/-!
# `_resolve_step` at the final hook family, keeping `ScrOld` on every result

* `scrOld_nf0_co` / `scrOld_sp_co`: `ScrOld` after a non-growing callee / a callee that keeps
  `scratch_ptr` (the node constructors, `ctor_sp`).
* `sumSpecA_of_gp`: a function summary from a `GP`-style body proof, with `ScrOld Γ Γ'` on every
  good result and a value fact `Rx` on returns.
* `sumSpecA_resolve_step_G`: `_resolve_step` with `ScrOld` and `ResRx`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Dec (rsBody rsCall rsStr rsNode code_resolve_step)

variable {σ : Type} {X : Ctx 64}

theorem scrOld_nf0_co {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64}
    (co : CO a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false) : ScrOld Γ Γ' := by
  obtain ⟨p1, -, -, hL, -⟩ := co.heap.1
  rw [haC] at hL
  exact scrOld_of_nf0 hL (co.nfp hg)

theorem scrOld_sp_co {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    (co : CO a sg' vs Γ Γ' q q' s st r)
    (hsp : st.globals.lookup gScratch = (callEntryStateHOLFinite s callee).globals.lookup gScratch) :
    ScrOld Γ Γ' := by
  obtain ⟨p1, hp1, hord1, hL, -⟩ := co.heap.1
  have hq' := co.heap.2.1
  rw [hp1] at hq'
  cases hq'
  rw [haC] at hL
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
  exact scrOld_of_sp hL hord1 co.nf (Spec.Mpt.Leaves.ptrs_sp_eq hpe hp1 hsp)

/-- A function summary from a `GP`-style body proof. -/
theorem sumSpecA_of_gp {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Ptrs → Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧ ScrOld Γ0 Γ' ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs p0 Γ' p' t.memory v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → Rx vs p0 Γ' p' t.memory v) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (WaveHelpers.capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hsc, hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', sumCore_pw_mono2 (act_exit (WaveHelpers.capsOK_nil C sg) hps hext hh'
    (fun v hv => (hret v hv).1)) ?_, hsc, fun v hv q0 q' hq0 hq' => ?_⟩
  · rintro x ⟨hx, c, hc, -⟩
    cases hc
  · rw [hps] at hq0; cases hq0
    rw [hh'.2.1] at hq'; cases hq'
    exact (hret v hv).2

/-- The function-level post, from `GP`. -/
theorem gp_final {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : GP a L E Rv r t) : ∀ r', r = some r' → ¬ Abortive r' →
      ∃ Γ' p', Ext a.Γ0 Γ' ∧ Heap a Γ' p' t ∧ ScrOld a.Γ0 Γ' ∧ ∀ v, r' = .returned v → Rv Γ' p' t.memory v :=
  fun r' hr hna => (h.2 r' hr).2 hna

/-- The `any`-parameter call obligations of a table callee. -/
theorem anyArgsG {a : Act σ} {sg' : Sig} (hps : ∀ pt ∈ sg'.params, pt = .any)
    {args : List (ExpHOL 64)} (hlen : sg'.params.length = args.length) {Γ : Gam} {q : Ptrs}
    {s : State σ} {vs : List (ValueHOL 64)} (hvs : evs s args = some vs) :
    ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) :=
  ⟨argsOK_any hps (by rw [evs_len2 hvs]; exact hlen), fun x hx => argCells_any hps hx⟩

theorem ctor_hashed_sp : ctorNames.contains (nm "node_new_hashed") = true := by decide_cbv

/-- **`_resolve_step`'s summary**, with `ScrOld` on every result. -/
theorem sumSpecA_resolve_step_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_resolve_step") rsSig
      (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ResRx vs Γ' v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs _ Γ' _ _ v => ResRx vs Γ' v) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, hB, hC'⟩ :=
    Spec.lookupCode_three code_resolve_step (by decide) (by decide) (by decide) hl
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) rsSig [] [A, B, C] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  refine hoareG_conseq (P := GI a (fun _ => True) (fun _ _ _ => True))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ResRx a.vs Γ' v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨trivial, Γ0, p0, ext_refl _, hh, scrOld_refl _, trivial⟩
  · intro r t _ _ h
    exact gp_final h
  -- the failing call `mpt_fail(k)`
  have hfail : ∀ k : Nat, HoareG σ guestCtx (GI a (fun _ => True) (fun _ _ _ => True))
      (Spec.callD (nm "mpt_fail") [cw k])
      (GP a (fun _ => True) (fun _ _ _ => True)
        (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ResRx a.vs Γ' v)) :=
    fun k => gp_call ha (sumA_of_csumm mptFail_R) (funSpec_true _) (by simp) (by simp)
      (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1, fun x hx => argCells_any (by simp) hx,
        fun _ => trivial⟩)
      (fun s st vs callee r Γ Γ' q q' _ _ _ _ _ _ _ co => ⟨scrOld_nf0_co haC co rfl, fun _ => trivial⟩)
  unfold rsBody
  refine gp_dec ha.hH (L1 := fun _ => True) (L2 := fun _ => True) (fun _ _ _ _ _ => trivial) ?_
    (fun _ _ _ _ => trivial)
  refine gp_dec ha.hH (L1 := fun _ => True) (L2 := fun _ => True) (fun _ _ _ _ _ => trivial) ?_
    (fun _ _ _ _ => trivial)
  refine gp_seq (L := fun _ => True) (E := fun _ _ _ => True) ?_ ?_
  · unfold rsCall
    exact gp_try ha (sumA_of_csumm rlpItem_R) (funSpec_true _) (by simp) (by simp) (by decide)
      (Lh := fun _ => True) (Eh := fun _ _ _ => True)
      (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1, fun x hx => argCells_any (by simp) hx,
        fun _ => trivial⟩)
      (fun s st vs callee r Γ Γ' q q' _ _ _ _ _ _ _ co =>
        ⟨scrOld_nf0_co haC co rfl, fun _ _ => ⟨trivial, fun _ => trivial⟩, fun _ _ => ⟨trivial, trivial⟩⟩)
      (hfail 3)
  refine gp_seq (L := fun _ => True) (E := fun _ _ _ => True) ?_ ?_
  rotate_left
  · refine gp_ret ha.hH (fun s Γ q _ _ _ _ _ v hv => ⟨retOK_nil, ?_⟩)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd hv (ev_cw s 1)
    exact resRx_one
  refine hoareG_ite ?_ (gp_skip fun s h => h.1)
  refine hoareG_pre (P := GI a (fun _ => True) (fun _ _ _ => True)) ?_ (fun s _ h => h.1)
  unfold rsStr
  refine gp_seq (L := fun _ => True) (E := fun _ _ _ => True) ?_ ?_
  · refine hoareG_ite ?_ (gp_skip fun s h => h.1)
    refine hoareG_pre (gp_ret ha.hH (fun s Γ q _ _ _ _ _ v hv => ⟨retOK_nil, ?_⟩)) (fun s _ h => h.1)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (ev_cw s 0)
    intro r0 r1 r2 r3 hv' _
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv'
    rw [← hv'.2.1]
    exact Or.inl (by simp [nullMax])
  refine gp_seq (L := fun _ => True) (E := fun _ _ _ => True) ?_ ?_
  · exact hoareG_ite (hoareG_pre (hfail 10) fun s _ h => h.1) (gp_skip fun s h => h.1)
  refine gp_decCall ha (sumA_of_csumm nodedbLookup_R) (funSpec_true _) (by simp) (by simp)
    (L1 := fun _ _ => True) (E1 := fun _ _ _ _ => True) (L2 := fun _ => True)
    (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp) rfl hvs).1, fun x hx => argCells_any (by simp) hx,
      fun _ => trivial⟩)
    (fun s st vs callee r Γ Γ' q q' _ _ _ _ _ _ _ co => ⟨scrOld_nf0_co haC co rfl, fun _ _ _ => trivial⟩)
    (fun _ _ _ _ _ => trivial) ?_ (fun _ _ _ _ => trivial)
  intro v
  unfold rsNode
  refine gp_seq (L := fun _ => True) (E := fun _ _ _ => True) ?_ ?_
  rotate_left
  · refine gp_ret ha.hH (fun s Γ q _ _ _ _ _ v hv => ⟨retOK_nil, ?_⟩)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd hv (ev_cw s 1)
    exact resRx_one
  refine hoareG_ite ?_ (gp_skip fun s h => h.1)
  refine hoareG_pre (P := GI a (fun _ => True) (fun _ _ _ => True)) ?_ (fun s _ h => h.1)
  refine gp_decCall ha nodeNewHashed_spec_R (ctor_sp hX ctor_hashed_sp) (by simp [Node.nhSig])
    (fun _ => rfl)
    (L1 := fun v m => m.lookup (nm "hn") = some v)
    (E1 := fun v Γ _ _ => ∀ w, v = .val (.word w) → Fits Γ Types.nodeU w)
    (L2 := fun _ => True)
    (fun s Γ q _ _ _ _ vs hvs => ⟨(anyArgsG (by simp [Node.nhSig]) rfl hvs).1,
      fun x hx => argCells_any (by simp [Node.nhSig]) hx, fun _ => trivial⟩)
    (fun s st vs callee r Γ Γ' q q' _ _ _ _ _ hLc _ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv _ w hw => by subst hw; exact co.ret _ hv 0 _ w rfl (by simp [flattenHOL])⟩)
    (fun s st v _ _ => by simp [setVarHOLFinite, FUPDATE]) ?_ (fun _ _ _ _ => trivial)
  intro v1
  refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ⟨retOK_nil, ?_⟩)
  obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (by rw [ev_lv]; exact hL)
  intro r0 r1 r2 r3 hv' _
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hv'
  exact hE r1 hv'.2.1

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_of_gp
#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_resolve_step_G
