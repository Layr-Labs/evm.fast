import InitECandidate.Solver.MemSafe.Mod.PreModexp
import InitECandidate.Solver.MemSafe.Pre.Dispatch
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# Eon: `pre_identity` and `run_precompile`, proved by hand

`pre_identity` stores `MSG_DATA_N` of the running frame's message into `EV_OUTPUT_N`, a `bnd` slot
(value `< 2^32`). The fold cannot see through the `prot` slot `EV_MSG`, so `pre_identity` is not a fold
entry any more and `run_precompile` has no `CSumm`. Both get a `SumSpecA` whose precondition is
`ReqOK evCaps ∧ IdPre` (`IdPre`: the running EV object's `EV_MSG` is a message object of `Γ`).

* `idBody`: the code of `pre_identity`.
* `sumSpecA_pre_identity`: the `SumSpecA` of `pre_identity`.
* `sumSpecA_run_precompile`: the dispatcher, with the 17 other callees as `CSumm`s of the fold table.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Mod InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- The running EV object's message is a `Γ` message object. -/
def IdPre (s : State σ) (Γ : Gam) : Prop :=
  ∃ e ∈ Γ, e.ty = tEV ∧ gword s (nm "ev") = some e.base ∧
    ∃ M ∈ Γ, (M.ty = tMSGh ∨ M.ty = tMSGs) ∧ M.base = rd s.memory (e.cell 14)


theorem mem_rd_l (m : Mem) (a : BitVec 64) : m a = .word (rd m a) := by
  unfold rd
  split
  rename_i w h
  exact h

theorem gword_congr_l {s t : State σ} (hg : t.globals = s.globals) (g : MlS) :
    gword t g = gword s g := by
  unfold gword; rw [hg]

theorem ev_lv_eq_l {s : State σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) : ev s (lv x) = some (.val (.word w)) := h

/-! ## Generic: a call with capabilities and a hand precondition -/

/-- `heap_callC` with an extra precondition `Q` on the callee's entry state. -/
theorem heap_callCP {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {cs' : List Cap} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    {Q : List (ValueHOL 64) → State σ → Gam → Prop}
    (hR : Good (some r) → ¬ Abortive r → ∀ Γ, G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p ∧ ArgsOK a.Cb Γ p sg'.params vs) →
      (ReqOK cs' (callEntryStateHOLFinite s callee) Γ ∧ Q vs (callEntryStateHOLFinite s callee) Γ) →
      ∃ Γ' p p', SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ CapPW cs' (callEntryStateHOLFinite s callee) Γ x)
        Γ (callEntryStateHOLFinite s callee) vs r st Γ' p p' ∧ True)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs)
    (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgrf : sg'.grows = false) (hcs : capSub cs' a.caps = true)
    (hQ : Q vs (callEntryStateHOLFinite s callee) Γ) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p p := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  have hreq0 := req_now ha hh
  have hreq : ReqOK a.caps (callEntryStateHOLFinite s callee) Γ := hreq0
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ ⟨req_sub hcs hreq, hQ⟩
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw (fun h => by rw [hgrf] at h; cases h) hcs
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, hng', hret⟩ := core
  exact ⟨Γ', q', hext, hh', hmono, hng' hgrf⟩

/-- **`f();`** for a callee with capabilities `cs' ⊆ a.caps`, a hand precondition `Q` on the callee's
entry state, and an auxiliary precondition `Aux` of the caller's state. -/
theorem hoareG_callKcP {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs' : List Cap} {Q : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' (fun vs s Γ => ReqOK cs' s Γ ∧ Q vs s Γ)
      (fun _ s Γ x => CapPW cs' s Γ x) (fun _ _ _ _ _ _ => True))
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false) (hcs : capSub cs' a.caps = true)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} (Aux : State σ → Prop)
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → Aux s → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      K ≤ p.hp → ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ callee, Q vs (callEntryStateHOLFinite s callee) Γ) :
    HoareG σ X (fun s => PK a K MK L s ∧ Aux s) (.call (some (none, none)) f args)
      (SPK a K MK L) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨⟨hL, Γ, p, he, hh, hK, hw⟩, hAux⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF, hQ⟩ := hargs s hs hL hAux Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf⟩ := heap_callCP (Q := Q) ha hh hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgrf hcs (hQ callee)
    have hh2 := heap_congr (s := st) ha.hH (t := { st with locals := s.locals }) rfl rfl rfl rfl hh'
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', hh2, Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨⟨hL, Γ, p, he, hh, hK, hw⟩, hAux⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(WaveHelpers.abn_nb habn).1, (WaveHelpers.abn_nb habn).2, fun hna => ?_⟩
    obtain ⟨hA, hF, hQ⟩ := hargs s hs hL hAux Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callCP (Q := Q) ha hh hR (abn_good' habn) hna hA hF hgw
      hgrf hcs (hQ callee)
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'⟩

/-- `csumm_of_heap_caps` with a hand precondition. -/
theorem sumSpecA_of_heap_caps_pre {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {cs : List Cap} (hcs : capsOK C sg cs = true)
    {Q : List (ValueHOL 64) → State σ → Gam → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Q vs s0 Γ0 →
        ActOK (actOf C H sg cs vs s0 Γ0 p0) X → Heap (actOf C H sg cs vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg cs vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v)) :
    SumSpecA σ X C H f sg (fun vs s Γ => ReqOK cs s Γ ∧ Q vs s Γ) (fun _ s Γ a => CapPW cs s Γ a)
      (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs ⟨hreq, hpre⟩
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs hreq
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩


/-! ## The code of `pre_identity` -/

def idTail : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
    (.seq (callD (nm "charge_gas") [.op .add [cw 15, .panop .mul [cw 3, lv (nm "w")]]])
      (.seq (.store (pmEv 120) (.load .one (.op .add [lv (nm "msg"), cw 88])))
        (.seq (.store (pmEv 128) (lv (nm "n"))) (.return (cw 0)))))

def idBody : ProgHOL 64 :=
  .dec (nm "msg") .one (.load .one (pmEv 112))
    (.dec (nm "n") .one (.load .one (.op .add [lv (nm "msg"), cw 96])) idTail)

theorem entry_pre_identity : fnEntry Guest.Software.guestFn_pre_identity =
    (nm "pre_identity", [], idBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_pre_identity : guestCode (nm "pre_identity") = some ([], idBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 823) (by decide)) ⟨_, rfl⟩
    entry_pre_identity


/-! ## `IdPre` facts -/

theorem idPre_congr {s t : State σ} {Γ : Gam} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (h : IdPre s Γ) : IdPre t Γ := by
  obtain ⟨e, he, het, hge, M, hM, hMt, hMb⟩ := h
  exact ⟨e, he, het, by rw [gword_congr_l hg]; exact hge, M, hM, hMt, by rw [hm]; exact hMb⟩

theorem idPre_ext {s : State σ} {Γ Γ' : Gam} (hx : Ext Γ Γ') (h : IdPre s Γ) : IdPre s Γ' := by
  obtain ⟨e, he, het, hge, M, hM, hMt, hMb⟩ := h
  obtain ⟨e', he', heb, het', -⟩ := hx e he
  obtain ⟨M', hM', hMb', hMt', -⟩ := hx M hM
  refine ⟨e', he', by rw [het', het], by rw [heb]; exact hge, M', hM', by rw [hMt']; exact hMt, ?_⟩
  have hc : e'.cell 14 = e.cell 14 := by unfold Obj.cell; rw [heb]
  rw [hc, hMb', hMb]

/-- The facts `pre_identity` reads: `ev`, its message `M` and the bound on `MSG_DATA_N`. -/
theorem idpre_facts {a : Act σ} (hty : ∀ t, a.Cb.ty t = Types.guestC.ty t) {s : State σ} {Γ : Gam}
    (hG : G a.Cb a.H Γ s) (hid : IdPre s Γ) :
    ∃ E M : BitVec 64, gword s (nm "ev") = some E ∧ rd s.memory (E + BitVec.ofNat 64 112) = M ∧
      (rd s.memory (M + BitVec.ofNat 64 96)).toNat < 2 ^ 32 := by
  obtain ⟨e, he, het, hge, M, hM, hMt, hMb⟩ := hid
  obtain ⟨p, hp, hord, hL, hFl, -⟩ := hG
  refine ⟨e.base, M.base, hge, hMb.symm, ?_⟩
  have hsz : 176 ≤ M.size := by
    have := (hL.1 M hM).2.2.2.1
    rw [hty] at this
    rcases hMt with h | h <;> rw [h] at this <;> exact le_trans (by decide) this
  have h12 := hFl M hM 12 (by unfold Obj.HasSlot; omega)
  rw [hty] at h12
  have hb : (Types.guestC.ty M.ty).slot 12 = .bnd := by
    rcases hMt with h | h <;> rw [h]
    · exact Types.msg_dataN_bnd.1
    · exact Types.msg_dataN_bnd.2
  rw [hb] at h12
  exact h12

theorem ev_pm_load {s : State σ} {E : BitVec 64} (hE : gword s (nm "ev") = some E) {k : Nat}
    {v : ValueHOL 64} (h : ev s (.load .one (pmEv k)) = some v) :
    v = V (rd s.memory (E + BitVec.ofNat 64 k)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one h
  rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s k)] at hw
  simp only [V, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  exact congrArg ValueHOL.val (mem_rd_l _ _)

/-! ## `pre_identity` -/

/-- The callee summaries and activation facts of `pre_identity`. -/
structure IP (σ : Type) (X : Ctx 64) (a : Act σ) : Prop where
  ha : ActOK a X
  hgrow : a.sg.grows = false
  hcaps : a.caps = evCaps
  hty : ∀ t, a.C.ty t = Types.guestC.ty t
  htyb : ∀ t, a.Cb.ty t = Types.guestC.ty t
  wo : SumSpecA σ X a.Cb a.H (nm "words_of") Mod.sg1 (fun _ _ _ => True) (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ => True)
  cg : CSumm σ X a.Cb a.H (nm "charge_gas") Mod.sg1 evCaps

theorem id_tail {a : Act σ} (ip : IP σ X a) (M N : BitVec 64) (hN : N.toNat < 2 ^ 32)
    (MK : BitVec 64) :
    HoareG σ X (PK a a.p0.hp MK (fun m => LP [("n", V N), ("msg", V M)] m))
      (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
        (.seq (callD (nm "charge_gas") [.op .add [cw 15, .panop .mul [cw 3, lv (nm "w")]]])
          (.seq (.store (pmEv 120) (.load .one (.op .add [lv (nm "msg"), cw 88])))
            (.seq (.store (pmEv 128) (lv (nm "n"))) (.return (cw 0)))))) (HQa a) := by
  refine hoareG_decCallV ip.ha ip.wo (R' := fun _ _ _ _ => True)
    (fun vs body callee rs hl s hs hloc r hr => trivial) (by simp [Mod.sg1]) rfl
    (Fct := fun v => ∃ x, v = V x)
    (L' := fun v m => LP (("w", v) :: [("n", V N), ("msg", V M)]) m) ?_ ?_ ?_ ?_
  · intro s _ hL Γ p he hh hK vs hvs
    have e : ev s (lv (nm "n")) = some (V N) := LP.getE hL (by simp)
    rw [evs_cons e evs_nil] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [Mod.sg1]) rfl, fun x hx => absurd hx (argCells_any (by simp [Mod.sg1])),
      fun _ => trivial⟩
  · intro s _ vs _ callee v st _ hsh
    obtain ⟨x, hx⟩ := val_of_shapeEq_one' hsh
    exact ⟨x, hx⟩
  · intro s st v hL
    refine LP.dec hL "w" v ?_
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl
    · show nm "n" ≠ nm "w"
      decide
    · show nm "msg" ≠ nm "w"
      decide
  · intro v ⟨x, hx⟩
    subst hx
    refine hoareG_seqK (L := fun m => LP (("w", V x) :: [("n", V N), ("msg", V M)]) m)
      (hoareG_callKc ip.ha ip.cg (by simp [Mod.sg1]) rfl (by rw [ip.hcaps]; decide) ?_) ?_
    · intro s _ hL Γ p he hh hK vs hvs
      have hl := evs_len' hvs
      exact ⟨argsOK_any (by simp [Mod.sg1]) (by simpa [Mod.sg1] using hl.symm),
        fun x hx => absurd hx (argCells_any (by simp [Mod.sg1]))⟩
    refine hoareG_seqK (L := fun m => LP (("w", V x) :: [("n", V N), ("msg", V M)]) m)
      (hoareG_stwKS ip.ha ?_ ?_) ?_
    · intro s _ hL Γ p he hh w hw h8
      obtain ⟨E, hE, hsc⟩ := scell_ev ip.ha ip.hcaps ip.hty ip.htyb hh (k := 15) rfl
      rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s 120)] at hw
      cases hw
      exact hsc
    · intro s hL v' hv'
      obtain ⟨w, -, -, rfl⟩ := ev_load_one hv'
      exact ⟨s.memory w, by simp [flattenHOL]⟩
    refine hoareG_seqK (L := fun m => LP (("w", V x) :: [("n", V N), ("msg", V M)]) m)
      (hoareG_stwBKS ip.ha ?_ ?_) ?_
    · intro s _ hL Γ p he hh w hw h8
      obtain ⟨E, hE, hbc⟩ := bcell_ev ip.ha ip.hcaps ip.hty ip.htyb hh
      rw [pmEv, ev_add2 (ev_glob hE) (ev_cw s 128)] at hw
      cases hw
      exact hbc
    · intro s hL v' hv'
      rw [LP.getE hL (x := "n") (v := V N) (by simp)] at hv'
      cases hv'
      exact ⟨N, rfl, hN⟩
    exact hoareG_conseq (hoareG_retRQ ip.ha.hH) (fun _ _ h => h) (fun r t _ _ h => rq_hqa h)

theorem id_body {a : Act σ} (ip : IP σ X a) {s0 : State σ} (hh : Heap a a.Γ0 a.p0 s0)
    (hG : G a.Cb a.H a.Γ0 s0) (hpre : IdPre s0 a.Γ0)
    (hwin : WinOK a a.Γ0 a.p0 .heap (W a.p0.hp)) :
    HoareG σ X (fun t => t = s0) idBody (HQa a) := by
  unfold idBody
  refine hoareG_dec fun s hs hP v hv _ => ?_
  have hs0 : s = s0 := hP
  subst hs0
  obtain ⟨E, M, hE, hM, hb⟩ := idpre_facts ip.htyb hG hpre
  have hv1 : v = V M := by rw [ev_pm_load hE hv, hM]
  subst hv1
  refine hoareG_dec fun s' hs' hP' v2 hv2 _ => ?_
  have hs1 : s' = setVarHOLFinite (nm "msg") (V M) s := hP'
  subst hs1
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv2
  have hlm : ev (setVarHOLFinite (nm "msg") (V M) s) (lv (nm "msg")) = some (V M) :=
    ev_lv_eq_l (lk_set_self _ _ _)
  rw [ev_add2 hlm (ev_cw _ 96)] at hw
  simp only [V, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have hmem : (setVarHOLFinite (nm "msg") (V M) s).memory (M + BitVec.ofNat 64 96) =
      .word (rd s.memory (M + BitVec.ofNat 64 96)) := mem_rd_l _ _
  rw [hmem]
  refine hoareG_conseq (id_tail ip M (rd s.memory (M + BitVec.ofNat 64 96)) hb (W a.p0.hp))
    (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ip.ha.hH (t := t) _ hq)
  subst ht
  refine ⟨?_, a.Γ0, a.p0, ext_refl _, heap_congr (s := s) ip.ha.hH rfl rfl rfl rfl hh, le_refl _, hwin⟩
  intro p hp
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl
  · exact lk_set_self _ _ _
  · simp only [V]
    rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _

/-- The window at the entry of a function. -/
theorem win_entry {a : Act σ} {s0 : State σ} (ha : ActOK a X) (hh : Heap a a.Γ0 a.p0 s0) :
    WinOK a a.Γ0 a.p0 .heap (W a.p0.hp) := by
  have hp0 : a.p0.hp < 2 ^ 64 := by
    have := ha.hord0.2.1
    unfold heapEnd at this
    omega
  exact (win_new (a := a) (Γ := a.Γ0) (p := a.p0) (s := s0) hh (rg := .heap) (w := W a.p0.hp)
    (by rw [toNat_W hp0]; rfl)).2.2

/-- **`pre_identity`**: a hand `SumSpecA` (precondition `IdPre`). -/
theorem sumSpecA_pre_identity {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hWO : CSumm σ X Types.guestC H (nm "words_of") Mod.sg1 [])
    (hCG : CSumm σ X Types.guestC H (nm "charge_gas") Mod.sg1 evCaps) :
    SumSpecA σ X Types.guestC H (nm "pre_identity") preSig
      (fun vs s Γ => ReqOK evCaps s Γ ∧ IdPre s Γ) (fun _ s Γ x => CapPW evCaps s Γ x)
      (fun _ _ _ _ _ _ => True) := by
  have hcs : capsOK Types.guestC preSig evCaps = true := by decide
  refine sumSpecA_of_heap_caps_pre hF.hH hF.hC hF.hal hF.hAC hF.hNS hcs
    (Q := fun vs s Γ => IdPre s Γ) ?_
  intro vs body callee rs hl s0 hs hloc Γ0 p0 hpre ha hh
  rw [hF.hX] at hl
  obtain ⟨rfl, -, hlen, -⟩ := lookupCode_gen code_pre_identity hl
  have hvs : vs = [] := List.length_eq_zero_iff.mp hlen.symm
  subst hvs
  have ip : IP σ X (actOf Types.guestC H preSig evCaps [] s0 Γ0 p0) :=
    { ha := ha
      hgrow := rfl
      hcaps := rfl
      hty := fun _ => rfl
      htyb := fun _ => rfl
      wo := toSA hWO
      cg := hCG }
  have hG : G Types.guestC H Γ0 s0 := by
    have h1 := hh.1
    rw [ha.hupg] at h1
    exact G_of_upg ha.hcaps h1
  have H0 := id_body ip hh hG hpre (win_entry ha hh)
  refine hoareG_conseq H0 (fun t _ ht => ht) (fun r t _ _ hq r' hr hna => ?_)
  obtain ⟨Γ', p', he, hh'⟩ := hq r' hr hna
  exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [preSig] at hrt⟩


/-! ## The dispatcher -/

/-- The dispatch branches `(idx, callee)` in program order. -/
def rpPairs : List (Nat × MlS) :=
  [(1, nm "pre_ecrecover"), (2, nm "pre_sha256"), (3, nm "pre_ripemd160"), (4, nm "pre_identity"),
   (6, nm "pre_alt_bn128_add"), (7, nm "pre_alt_bn128_mul"), (8, nm "pre_alt_bn128_pairing_check"),
   (5, nm "pre_modexp"), (9, nm "pre_blake2f"), (10, nm "pre_kzg_point_evaluation"),
   (11, nm "pre_bls_g1_add"), (12, nm "pre_bls_g1_msm"), (13, nm "pre_bls_g2_add"),
   (14, nm "pre_bls_g2_msm"), (15, nm "pre_bls_pairing"), (16, nm "pre_bls_map_fp_to_g1"),
   (17, nm "pre_bls_map_fp2_to_g2"), (18, nm "pre_p256verify")]

def rpChain : List (Nat × MlS) → ProgHOL 64
  | [] => .seq (.raise (nm "BlockErr") (cw 99)) (.return (cw 0))
  | (k, f) :: rest =>
    .seq (.ite (.cmp .equal (lv (nm "idx")) (cw k)) (.seq (callD f []) (.return (cw 0))) .skip)
      (rpChain rest)

theorem entry_run_precompile : fnEntry Guest.Software.guestFn_run_precompile =
    (nm "run_precompile", [(nm "idx", .one)], rpChain rpPairs, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_run_precompile :
    guestCode (nm "run_precompile") = some ([(nm "idx", .one)], rpChain rpPairs, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 830) (by decide)) ⟨_, rfl⟩
    entry_run_precompile

theorem rp_fold {H : Hooks σ} (hT : CTabSound σ X Types.guestC H rpTab0) :
    ∀ f, (∃ k, (k, f) ∈ rpPairs) → f ≠ nm "pre_identity" →
      CSumm σ X Types.guestC H f preSig evCaps := by
  rintro f ⟨k, hk⟩ hne
  simp only [rpPairs, List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at hk
  rcases hk with ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ |
    ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩ |
    ⟨-, rfl⟩ | ⟨-, rfl⟩ | ⟨-, rfl⟩
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact absurd rfl hne
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT
  · exact ctab% hT

/-- The dispatcher's invariant: the window invariant with the message fact. -/
def Inv (a : Act σ) (K : Nat) (MK : BitVec 64) (s : State σ) : Prop :=
  PK a K MK (fun _ => True) s ∧ IdPre s a.Γ0

structure RPC (σ : Type) (X : Ctx 64) (a : Act σ) : Prop where
  ha : ActOK a X
  hcaps : a.caps = evCaps
  fold : ∀ f, (∃ k, (k, f) ∈ rpPairs) → f ≠ nm "pre_identity" →
    CSumm σ X a.Cb a.H f preSig evCaps
  ident : SumSpecA σ X a.Cb a.H (nm "pre_identity") preSig
    (fun vs s Γ => ReqOK evCaps s Γ ∧ IdPre s Γ) (fun _ s Γ x => CapPW evCaps s Γ x)
    (fun _ _ _ _ _ _ => True)

theorem capSub_evCaps_self : capSub evCaps evCaps = true := by decide

theorem rp_branch {a : Act σ} (rc : RPC σ X a) {f : MlS} {k : Nat} (hk : (k, f) ∈ rpPairs)
    {K : Nat} {MK : BitVec 64} :
    HoareG σ X (Inv a K MK) (.seq (callD f []) (.return (cw 0))) (RQ a) := by
  have hret : HoareG σ X (SPK a K MK (fun _ => True) none) (.return (cw 0)) (RQ a) :=
    hoareG_pre (hoareG_retRQ rc.ha.hH (K := K) (MK := MK) (L := fun _ => True))
      (fun t _ h => ⟨(h.1 rfl).1, (h.1 rfl).2⟩)
  by_cases hid : f = nm "pre_identity"
  · subst hid
    refine hoareG_seq (R := SPK a K MK (fun _ => True))
      (hoareG_callKcP rc.ha rc.ident (by simp [preSig]) rfl
        (by rw [rc.hcaps]; exact capSub_evCaps_self) (K := K) (MK := MK) (L := fun _ => True)
        (fun s => IdPre s a.Γ0) ?_)
      (fun r t _ hr _ h => ⟨hr, h.2⟩) hret
    intro s _ hL hAux Γ p he hh hK vs hvs
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [preSig]) rfl, fun x hx => absurd hx (argCells_any (by simp [preSig])),
      fun callee => idPre_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl rfl
        (idPre_ext he hAux)⟩
  · refine hoareG_seq (R := SPK a K MK (fun _ => True))
      (hoareG_pre (hoareG_callKc rc.ha (rc.fold f ⟨k, hk⟩ hid) (by simp [preSig]) rfl
        (by rw [rc.hcaps]; exact capSub_evCaps_self) (K := K) (MK := MK) (L := fun _ => True) ?_)
        (fun s _ h => h.1))
      (fun r t _ hr _ h => ⟨hr, h.2⟩) hret
    intro s _ hL Γ p he hh hK vs hvs
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp [preSig]) rfl, fun x hx => absurd hx (argCells_any (by simp [preSig]))⟩

theorem rp_chain {a : Act σ} (rc : RPC σ X a) (K : Nat) (MK : BitVec 64) :
    ∀ l : List (Nat × MlS), (∀ kf ∈ l, kf ∈ rpPairs) →
      HoareG σ X (Inv a K MK) (rpChain l) (HQa a)
  | [], _ => by
      unfold rpChain
      refine hoareG_seq (R := RQ a)
        (hoareG_pre (hoareG_raiseRQ rc.ha.hH (K := K) (MK := MK) (L := fun _ => True))
          (fun s _ h => h.1))
        (fun r t _ hr _ h => rq_hqa h) ?_
      exact hoareG_false (fun s _ h => absurd rfl h.1)
  | (k, f) :: rest, h => by
      unfold rpChain
      refine hoareG_seq (R := fun r t => (r = none → Inv a K MK t) ∧ HQa a r t)
        (hoareG_ite ?_ ?_) (fun r t _ hr _ h => h.2) ?_
      · refine hoareG_conseq (hoareG_pre (rp_branch rc (h _ (List.mem_cons_self ..)) (K := K) (MK := MK))
          (fun s _ h => h.1)) (fun _ _ h => h)
          (fun r t _ _ hq => ⟨fun hr => absurd hr hq.1, rq_hqa hq⟩)
      · exact hoareG_skip fun s _ h => ⟨fun _ => h.1, fun r' hr => absurd hr (by simp)⟩
      · exact hoareG_pre (rp_chain rc K MK rest (fun kf hkf => h kf (List.mem_cons_of_mem _ hkf)))
          (fun t _ ht => ht.1 rfl)

/-- **`run_precompile`**: a hand `SumSpecA` over the callee table and the identity summary. -/
theorem sumSpecA_run_precompile {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H rpTab0)
    (hID : SumSpecA σ X Types.guestC H (nm "pre_identity") preSig
      (fun vs s Γ => ReqOK evCaps s Γ ∧ IdPre s Γ) (fun _ s Γ x => CapPW evCaps s Γ x)
      (fun _ _ _ _ _ _ => True)) :
    SumSpecA σ X Types.guestC H (nm "run_precompile") rpSig
      (fun vs s Γ => ReqOK evCaps s Γ ∧ IdPre s Γ) (fun _ s Γ x => CapPW evCaps s Γ x)
      (fun _ _ _ _ _ _ => True) := by
  have hcs : capsOK Types.guestC rpSig evCaps = true := by decide
  refine sumSpecA_of_heap_caps_pre hF.hH hF.hC hF.hal hF.hAC hF.hNS hcs
    (Q := fun vs s Γ => IdPre s Γ) ?_
  intro vs body callee rs hl s0 hs hloc Γ0 p0 hpre ha hh
  rw [hF.hX] at hl
  obtain ⟨rfl, -, hlen, -⟩ := lookupCode_gen code_run_precompile hl
  set a : Act σ := actOf Types.guestC H rpSig evCaps vs s0 Γ0 p0 with ha_def
  have rc : RPC σ X a :=
    { ha := ha
      hcaps := rfl
      fold := rp_fold hT
      ident := hID }
  have hI : Inv a a.p0.hp (W a.p0.hp) s0 :=
    ⟨⟨trivial, Γ0, p0, ext_refl _, hh, le_refl _, win_entry ha hh⟩, hpre⟩
  have H0 := rp_chain rc a.p0.hp (W a.p0.hp) rpPairs (fun kf h => h)
  refine hoareG_conseq H0 (fun t _ ht => ?_) (fun r t _ _ hq r' hr hna => ?_)
  · subst ht; exact hI
  · obtain ⟨Γ', p', he, hh'⟩ := hq r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [rpSig] at hrt⟩

/-- The statement of the dispatcher's summary at the challenge context. -/
def RpS (σ : Type) (H : Hooks σ) : Prop :=
  SumSpecA σ guestCtx Types.guestC H (nm "run_precompile") rpSig
    (fun vs s Γ => ReqOK evCaps s Γ ∧ IdPre s Γ) (fun _ s Γ x => CapPW evCaps s Γ x)
    (fun _ _ _ _ _ _ => True)

/-- At the challenge context (`guestHooksJL`): `pre_modexp` and the pairing check remain hypotheses. -/
theorem sumSpecA_run_precompile_guestJL {σ : Type}
    (hPM : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "pre_modexp") preSig evCaps)
    (hPC : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ))
      (nm "pre_alt_bn128_pairing_check") preSig evCaps) :
    RpS σ (Hooks.guestHooksJL (σ := σ)) :=
  sumSpecA_run_precompile Wire.foldOK_guestJL
    (ctabSound_cons (ctabSound_cons Wire.tab_guestJL hPC) hPM)
    (sumSpecA_pre_identity Wire.foldOK_guestJL (ctab% Wire.tab_guestJL) (ctab% Wire.tab_guestJL))

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.sumSpecA_pre_identity
#print axioms InitECandidate.Solver.MemSafe.Pre.sumSpecA_run_precompile
