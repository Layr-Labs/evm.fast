import InitECandidate.Solver.MemSafe.Exb.HKit
import InitECandidate.Solver.MemSafe.Trie.CallX
import InitECandidate.Solver.MemSafe.Aw.Hdr

/-!
# A statement kit for bodies that mix above-writer callees and object adoption

`AWSpec`'s footprint `h0 ≤ x` includes live scratch and frame memory, so an above-writer callee does not fit `a.Foot` of an activation at the real
allocator. **The ghost activation** (`phA`) has the entry `hp` but an empty frame and scratch region (`gp0`): every cell at or above `hp` is then
`¬ p0.Allocated`, and the whole `Heap a` kit applies. Its summary is an above-writer spec with growth, not a `SumSpecA`; that fits a caller at top level.

`PP` is `Exb.HP` where only a *return* owes the invariant: above-writer specs say nothing about exceptions, and at block level an exception ends the run.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- The ghost entry allocator: the real heap pointer, nothing allocated in frame memory or scratch. -/
def gp0 (p : Ptrs) : Ptrs := ⟨p.hp, heapEnd, scratchEnd⟩

theorem gp0_ord {p : Ptrs} (h : p.Ordered) : (gp0 p).Ordered := by
  obtain ⟨h1, h2, h3, h4, h5, h6, -, -⟩ := h
  have e1 : heapEnd % 8 = 0 := by decide
  have e2 : scratchEnd % 8 = 0 := by decide
  have e3 : heapEnd ≤ scratchEnd := by decide
  exact ⟨h1, h2, le_rfl, e3, le_rfl, h6, e1, e2⟩

theorem gp0_mono {p q : Ptrs} (hq : q.Ordered) (h : p.hp ≤ q.hp) : (gp0 p).Mono q := by
  obtain ⟨-, -, h3, h4, h5, -⟩ := hq
  exact ⟨h, h3, h5⟩

theorem gp0_alloc {p : Ptrs} {x : Nat} (h : (gp0 p).Allocated x) : heapBase ≤ x ∧ x < p.hp := by
  unfold Ptrs.Allocated gp0 at h
  simp only at h
  omega

/-- The ghost activation of a body. -/
def phA (sg : Sig) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (p : Ptrs) : Act σ :=
  actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s Γ (gp0 p)

theorem ph_entry {sg : Sig} {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam} {p : Ptrs}
    (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) (hps : ptrsOf s = some p)
    (hargs : ArgsOK Types.guestC Γ (gp0 p) sg.params vs) :
    ActOK (phA sg vs s Γ p) X ∧ Heap (phA sg vs s Γ p) Γ p s := by
  obtain ⟨p2, hp2, hord2, hL2, -⟩ := id hG
  have hpp : p2 = p := by rw [hps] at hp2; exact (Option.some.inj hp2).symm
  subst hpp
  have hreq : ReqOK [] s Γ := fun c hc => by cases hc
  have hcs := WaveHelpers.capsOK_nil Types.guestC sg
  exact ⟨⟨hF.hH, hF.hC, gp0_ord hord2, fun o ho => (hL2.1 o ho).2.1, hF.hal, allocCfg_upg hF.hAC hcs, hargs,
      hF.hNS, rfl, hcs, hreq, fun o ho => (hL2.1 o ho).2.2.2.1⟩,
    ⟨G_upg hG hreq, hps, gp0_mono hord2 le_rfl, ext_refl Γ, newFresh_refl Γ _ _, fun _ _ => rfl, fun _ _ _ => rfl,
      fun _ => newFresh_refl Γ _ _⟩⟩

/-- The footprint of an above-writer callee at the current heap pointer. -/
def AwFoot (C : Cfg) (Γ : Gam) (q : Ptrs) (x : BitVec 64) : Prop :=
  q.hp ≤ x.toNat ∨ WCell C Γ x ∨ ¬ q.Allocated x.toNat

/-- `heap_after_call` for an above-writer callee, at an activation with empty frame and scratch regions. -/
theorem heap_after_aw {a : Act σ} (ha : ActOK a X) (hC : a.C = a.Cb) (hfp : a.p0.fp = heapEnd)
    (hsp : a.p0.sp = scratchEnd) {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {gw : List MlS}
    (hh : Heap a Γ q s) (hG' : G a.C a.H Γ' st) (hq' : ptrsOf st = some q') (hmono : q.Mono q')
    (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q')
    (hmod : ModifiesOnly (AwFoot a.Cb Γ q) s.memory st.memory)
    (hpg : ∀ g ∈ a.Cb.PG, g ∉ gw → st.globals.lookup g = s.globals.lookup g)
    (hgw : ∀ g ∈ gw, g ∈ a.sg.gw) (hgr : a.sg.grows = true) : Heap a Γ' q' st := by
  have hh0 := hh
  obtain ⟨hG, hps, hm0, he0, hnf0, hmod0, hpg0, hng0⟩ := hh
  refine ⟨hG', hq', mono_trans hm0 hmono, ext_trans he0 hext, newFresh_trans hm0 hmono hnf0 hnf,
    fun x hx => ?_, fun g hg hng => ?_, fun hf => ?_⟩
  · have h1 : st.memory x = s.memory x := by
      refine hmod x (fun hc => hx ?_)
      rcases hc with h | h | h
      · refine Or.inr (Or.inr (Or.inl fun hal => ?_))
        have h0 := hm0.1
        unfold Ptrs.Allocated at hal
        rw [hfp, hsp] at hal
        omega
      · exact foot_of_wcell hh0 ha.hord0 ha.hsz0 (by rw [hC]; exact h)
      · exact Or.inr (Or.inr (Or.inl fun h0 => h (alloc_mono hm0 h0)))
    rw [h1]
    exact hmod0 x hx
  · rw [hpg g (by rw [← hC]; exact hg) (fun h => hng (hgw g h))]
    exact hpg0 g hg hng
  · rw [hgr] at hf
    cases hf

/-- A call that adds no object above `q.hp` adds no object at all, seen from `q`. -/
theorem nf0_of_below {Γ Γ' : Gam} {q q' : Ptrs} (hord : q.Ordered) (hord' : q'.Ordered) (hnf : NewFresh Γ Γ' q q')
    (hB : Aw.Below Γ' q.hp) : NewFresh Γ Γ' q q := by
  intro o ho a h1 h2
  rcases hnf o ho a h1 h2 with h | h
  · exact Or.inl h
  · have hb := hB o ho
    obtain ⟨-, o2, o3, o4, -⟩ := hord
    obtain ⟨-, -, o7, o8, -⟩ := hord'
    unfold Fresh at h
    omega

/-- `Below` across a call that adds no object. -/
theorem below_nf0 {Γ Γ' : Gam} {q q' : Ptrs} (hnf : NewFresh Γ Γ' q q) (hB : Aw.Below Γ q.hp)
    (hmo : q.Mono q') (hs : ∀ o ∈ Γ', 0 < o.size) (hb64 : ∀ o ∈ Γ', o.hi ≤ 2 ^ 64) : Aw.Below Γ' q'.hp := by
  intro o ho
  have hz := hs o ho
  have hb := hb64 o ho
  have hle : o.lo + o.size = o.hi := rfl
  have hcell : (BitVec.ofNat 64 (o.hi - 1)).toNat = o.hi - 1 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rcases hnf o ho (BitVec.ofNat 64 (o.hi - 1)) (by rw [hcell]; omega) (by rw [hcell]; omega) with
    ⟨o0, ho0, -, -, -, h4⟩ | hf
  · have := hB o0 ho0
    have := hmo.1
    rw [hcell] at h4
    omega
  · unfold Fresh at hf
    omega

/-! ## The statement kit: only a return owes the invariant -/

/-- The invariant: locals `L`, the activation at some `Γ`, `q`, and a client predicate of the memory and the globals. -/
def PJ (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → LocalsH → Prop) (t : State σ) : Prop :=
  L t.locals ∧ ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q t ∧ E Γ q t.memory t.globals

def PX (a : Act σ) (Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop) (r' : PanSemResultExact 64) (t : State σ) : Prop :=
  ((∃ v, r' = .returned v) ∨ Abn r') ∧ ∀ v, r' = .returned v → ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧
    Heap a Γ q t ∧ Rv Γ q t.memory t.globals v

def PP (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → LocalsH → Prop)
    (Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → PJ a L E t) ∧ ∀ r', r = some r' → PX a Rv r' t

theorem pj_locals {a : Act σ} {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (hH : HooksLawful a.C a.H) {t : State σ} (Lc : LocalsH) (hL : L' Lc) (h : PJ a L E t) :
    PJ a L' E { t with locals := Lc } := by
  obtain ⟨-, Γ, q, he, hh, hE⟩ := h
  exact ⟨hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hE⟩

section rules
variable {a : Act σ} {L L' L2 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → LocalsH → Prop}
  {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}

theorem px_locals (hH : HooksLawful a.C a.H) {r' : PanSemResultExact 64} {t : State σ} (Lc : LocalsH)
    (h : PX a Rv r' t) : PX a Rv r' { t with locals := Lc } := by
  refine ⟨h.1, fun v hv => ?_⟩
  obtain ⟨Γ, q, he, hh, hr⟩ := h.2 v hv
  exact ⟨Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hr⟩

theorem pp_seq {P : State σ → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (PP a L E Rv))
    (hk : HoareG σ X (PJ a L E) k (PP a L' E' Rv)) : HoareG σ X P (.seq c k) (PP a L' E' Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem pp_skip {P : State σ → Prop} (hP : ∀ s : State σ, P s → PJ a L E s) :
    HoareG σ X P .skip (PP a L E Rv) :=
  hoareG_skip fun s _ h => ⟨fun _ => hP s h, fun r' h => by cases h⟩

theorem pp_assign (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (PJ a L E) (.assign .local x e) (PP a L' E Rv) :=
  hoareG_assign fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hE⟩,
      fun r' h => by cases h⟩

/-- `var x = e; body`; the new locals may depend on the memory. -/
theorem pp_dec (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 L3 : LocalsH → Prop}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s → E Γ q s.memory s.globals → ∀ v,
      ev s e = some v → L1 (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (PJ a L1 E) body (PP a L2 E' Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (PJ a L E) (.dec x sh e body) (PP a L3 E' Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s Γ q hs hL hh hE v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hE⟩
  · refine ⟨fun hr => ?_, fun r' hr' => px_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact pj_locals hH _ (hres s.locals t.locals hL hg.1) hg

theorem pp_ret {e : ExpHOL 64} (hH : HooksLawful a.C a.H)
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Ext a.Γ0 Γ →
      Heap a Γ q s → E Γ q s.memory s.globals → ∀ v, ev s e = some v → Rv Γ q s.memory s.globals v) :
    HoareG σ X (PJ a L E) (.return e) (PP a L2 E2 Rv) :=
  hoareG_return fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv => by
    refine ⟨(fun h' => by cases h'), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inl ⟨v, rfl⟩, fun v' hv' => ?_⟩
    cases hv'
    exact ⟨Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, h s Γ q hs hL he hh hE v hv⟩

/-- `if c { throw x e; }`: a throw owes nothing. -/
theorem pp_iteRaise {c e : ExpHOL 64} {x : MlS} :
    HoareG σ X (PJ a L E) (.ite c (.raise x e) .skip) (PP a L E Rv) := by
  refine hoareG_ite (hoareG_raise fun s _ _ v _ => ?_) (pp_skip fun _ h => h.1)
  refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
  cases hr'
  have habn : Abn (.exception x v) := Or.inl ⟨x, v, rfl⟩
  exact ⟨Or.inr habn, fun v' hv' => absurd hv' (Node.abn_ne_ret habn v')⟩

theorem pp_while (hH : HooksLawful a.C a.H) {c : ExpHOL 64} {body : ProgHOL 64} {Lx : LocalsH → Prop}
    (hb : HoareG σ X (fun s => PJ a L E s ∧ CondTrue s c) body (PP a L E Rv))
    (hexit : ∀ s : State σ, InCtx s X → PJ a L E s → ev s c = some (.val (.word 0)) → PJ a Lx E s) :
    HoareG σ X (PJ a L E) (.while c body) (PP a Lx E Rv) := by
  refine hoareG_while (I := PJ a L E) ?_ ?_ (fun s hs hi hc => ⟨fun _ => hexit s hs hi hc,
    fun r' h => by cases h⟩)
  · intro t ⟨hL, Γ, q, he, hh, hE⟩
    exact ⟨hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hE⟩
  · refine hoareG_conseq hb (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨v, hv⟩ | ⟨e, v, he⟩ | ⟨e, he⟩
      · rcases hcb with rfl | rfl <;> cases hv
      · rcases hcb with rfl | rfl <;> cases he
      · rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩

/-- **`f(args);`** through a summary; only a return needs the arguments. -/
theorem pp_call (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW [] s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64)) (callee : HolFiniteMapExact MlS (ValueHOL 64))
      (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs →
      E Γ q s.memory s.globals → Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Trie.Mod a sg' [] vs Γ q s st → E' Γ' q' st.memory st.globals) :
    HoareG σ X (PJ a L E) (.call (some (none, none)) f args) (PP a L E' Rv) := by
  refine hoareG_callD (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, -, hQ⟩ := Trie.heap_callGX (r := .returned v)
      (Pre := Pre) (Q := Q) ha hh (capSub_nil _) hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      hpost s st vs callee v Γ Γ' q q' hs hL hvs hE hLc' hQ hh hext hh' hmo hnf hnfp hmd⟩, fun r' h => by cases h⟩
  · intro s hs hP vs hvs callee r st hR _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`var x = f(args); k`** through a summary. -/
theorem pp_decCall (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW [] s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64} {L3 : LocalsH → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64)) (callee : HolFiniteMapExact MlS (ValueHOL 64))
      (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs →
      E Γ q s.memory s.globals → Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Trie.Mod a sg' [] vs Γ q s st → RetOK Γ' q q' vs sg'.ret v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      E1 v Γ' q' st.memory st.globals)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (PJ a (L1 v) (E1 v)) k (PP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (PJ a L E) (.decCall rn sh f args k) (PP a L3 E2 Rv) := by
  refine hoareG_decCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := Trie.heap_callGX (r := .returned v)
      (Pre := Pre) (Q := Q) ha hh (capSub_nil _) hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    have hE1 := hpost s st vs callee v Γ Γ' q q' hs hL hvs hE hLc' hQ hh hext hh' hmo hnf hnfp hmd (hret v rfl) hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', hE1⟩
    · refine ⟨fun hr => ?_, fun r' hr' => px_locals ha.hH _ (hq.2 r' hr')⟩
      have hg := hq.1 hr
      exact pj_locals ha.hH _ (hres s.locals t.locals hL hg.1) hg
  · intro s hs hP vs hvs callee r st hR _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`var x = f(args); k`** through an above-writer spec, at the current heap pointer. -/
theorem pp_decCallAW (ha : ActOK a X) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgrA : a.sg.grows = true) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : Aw.AWSpec σ X Types.guestC (Hooks.guestHooksR (σ := σ)) f gw Pre Post) (hgw : ∀ g ∈ gw, g ∈ a.sg.gw)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hLc : FunSpec σ X f Lc)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64} {L3 : LocalsH → Prop}
    (hB : ∀ Γ q m g, E Γ q m g → Aw.Below Γ q.hp)
    (hPre : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s → E Γ q s.memory s.globals →
      ∀ vs, evs s args = some vs → ∀ callee, Pre vs (callEntryStateHOLFinite s callee) q.hp)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64)) (callee : HolFiniteMapExact MlS (ValueHOL 64))
      (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs →
      E Γ q s.memory s.globals → Heap a Γ q s → Heap a Γ' q' st → Ext Γ Γ' → NewFresh Γ Γ' q q → q.Mono q' →
      Aw.Below Γ' q.hp → ModifiesOnly (AwFoot Types.guestC Γ q) s.memory st.memory →
      Post vs (callEntryStateHOLFinite s callee) v st → Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ E1 v Γ'' q' st.memory st.globals)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (PJ a (L1 v) (E1 v)) k (PP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (PJ a L E) (.decCall rn sh f args k) (PP a L3 E2 Rv) := by
  refine hoareG_decCall (FunSpec.and hf hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    have hord := heap_ord hh
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    have hGe : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) := by
      have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
      rw [haC, haH] at this
      exact this
    obtain ⟨Γ', q', hG', hq', hext, hnf, hB', hmo, hmod, hpg, hPost⟩ := hR v rfl Γ q.hp q hGe hq0 (hB _ _ _ _ hE)
      hord.2.2.2.2.2.1 hord.1 le_rfl (hPre s Γ q hs hL hh hE vs hvs callee)
    have hG'' : G a.C a.H Γ' st := by rw [haC, haH]; exact hG'
    have hh' : Heap a Γ' q' st := by
      refine heap_after_aw (gw := gw) ha (by rw [haC, hCb]) hfp hsp hh hG'' hq' hmo hext hnf ?_ ?_ hgw hgrA
      · rw [hCb]; exact hmod
      · rw [hCb]; exact hpg
    obtain ⟨Γ'', hx2, hh2, hE1⟩ := hpost s st vs callee v Γ Γ' q q' hs hL hvs hE hh hh' hext
      (nf0_of_below hord (heap_ord hh') hnf hB') hmo hB' hmod hPost hLc' hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st v hL hsh, Γ'', q', ext_trans (ext_trans he hext) hx2,
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hE1⟩
    · refine ⟨fun hr => ?_, fun r' hr' => px_locals ha.hH _ (hq.2 r' hr')⟩
      have hg := hq.1 hr
      exact pj_locals ha.hH _ (hres s.locals t.locals hL hg.1) hg
  · intro s hs hP vs hvs callee r st hR _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- A store at or above `Hb`, where every object lies below `Hb`: it writes only cells outside `Γ` and unallocated at the ghost entry. -/
theorem pp_stAbove (ha : ActOK a X) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd) (hT : Aw.DomBelow X)
    {ea e : ExpHOL 64} {Hb : Nat}
    (hB : ∀ Γ q m g, E Γ q m g → Aw.Below Γ Hb ∧ a.p0.hp ≤ Hb ∧ Hb % 8 = 0)
    (haddr : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → E Γ q s.memory s.globals → ∀ w,
      ev s ea = some (.val (.word w)) → Hb ≤ w.toNat)
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (w : BitVec 64) (mem : Mem), InCtx s X → L s.locals →
      ev s ea = some (.val (.word w)) → E Γ q s.memory s.globals →
      ModifiesOnly (fun x => w.toNat ≤ x.toNat) s.memory mem → E' Γ q mem s.globals) :
    HoareG σ X (PJ a L E) (.store ea e) (PP a L E' Rv) := by
  refine hoareG_store fun s hs ⟨hL, Γ, q, he, hh, hEs⟩ w v mem hw hv hst => ?_
  have hdom : s.memaddrs = X.memaddrs := hs.2.1
  have hm0 := Aw.stores_ge (inst := fun x => Classical.propDecidable (s.memaddrs x))
    (fun x hx => hT x (hdom ▸ hx)) hst
  have hm : ModifiesOnly (fun x => w.toNat ≤ x.toNat) s.memory mem := hm0.mono fun x ⟨_, _, h⟩ => h
  obtain ⟨hb, h0, h8⟩ := hB _ _ _ _ hEs
  have hw0 := haddr s Γ q hs hL hEs w hw
  have hout : ∀ x : BitVec 64, w.toNat ≤ x.toNat → ¬ InObj Γ x.toNat := by
    rintro x hx ⟨o, ho, h1, h2⟩
    have := hb o ho
    omega
  refine ⟨fun _ => ⟨hL, Γ, q, he, ?_, hE s Γ q w mem hs hL hw hEs hm⟩, fun r' h => by cases h⟩
  refine heap_store_buf ha hh hm (fun x hx => Or.inr (hout x hx)) (fun x hx => Or.inr (Or.inr (Or.inl fun hal => ?_)))
  unfold Ptrs.Allocated at hal
  rw [hfp, hsp] at hal
  omega

/-- A byte store at or above `Hb`. -/
theorem pp_stByteAbove (ha : ActOK a X) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd) {ea e : ExpHOL 64} {Hb : Nat}
    (hB : ∀ Γ q m g, E Γ q m g → Aw.Below Γ Hb ∧ a.p0.hp ≤ Hb ∧ Hb % 8 = 0)
    (haddr : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → E Γ q s.memory s.globals → ∀ w,
      ev s ea = some (.val (.word w)) → Hb ≤ w.toNat)
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (w : BitVec 64) (mem : Mem), InCtx s X → L s.locals →
      ev s ea = some (.val (.word w)) → E Γ q s.memory s.globals →
      ModifiesOnly (fun x => x = panByteAlignHOL w) s.memory mem → E' Γ q mem s.globals) :
    HoareG σ X (PJ a L E) (.storeByte ea e) (PP a L E' Rv) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, q, he, hh, hEs⟩ w x mem hw hx hmem => ?_
  have hmod := Helpers.storeByte_mod hmem
  have hal := Helpers.byteAlign_toNat w
  obtain ⟨hb, h0, h8⟩ := hB _ _ _ _ hEs
  have hw0 := haddr s Γ q hs hL hEs w hw
  have hle : Hb ≤ (panByteAlignHOL w).toNat := by omega
  refine ⟨fun _ => ⟨hL, Γ, q, he, heap_store_out ha hh hmod ?_ ?_, hE s Γ q w mem hs hL hw hEs hmod⟩, fun r' h => by cases h⟩
  · rintro ⟨o, ho, h1, h2⟩
    have := hb o ho
    omega
  · intro hal'
    unfold Ptrs.Allocated at hal'
    rw [hfp, hsp] at hal'
    omega

/-- A word store at a known cell outside `Γ`, unallocated at the entry. -/
theorem pp_stCell (ha : ActOK a X) {ea e : ExpHOL 64}
    (hval : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → E Γ q s.memory s.globals → ∀ v, ev s e = some v →
      ∃ x : BitVec 64, v = .val (.word x))
    (hcell : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (w : BitVec 64), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory s.globals → ev s ea = some (.val (.word w)) → ¬ InObj Γ w.toNat ∧ ¬ a.p0.Allocated w.toNat)
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (w x : BitVec 64) (mem : Mem), InCtx s X → L s.locals → Heap a Γ q s →
      ev s ea = some (.val (.word w)) → ev s e = some (.val (.word x)) → E Γ q s.memory s.globals →
      rd mem w = x → (∀ y, y ≠ w → mem y = s.memory y) → E' Γ q mem s.globals) :
    HoareG σ X (PJ a L E) (.store ea e) (PP a L E' Rv) := by
  refine hoareG_store fun s hs ⟨hL, Γ, q, he, hh, hEs⟩ w v mem hw hv hst => ?_
  obtain ⟨x, rfl⟩ := hval s Γ q hs hL hEs v hv
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hmem' := Struct.store_word hst
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, -⟩ := Helpers.store1_mod hst1
  obtain ⟨hni, hna⟩ := hcell s Γ q w hs hL hh hEs hw
  refine ⟨fun _ => ⟨hL, Γ, q, he, heap_store_out ha hh hm hni hna, ?_⟩, fun r' h => by cases h⟩
  refine hE s Γ q w x mem hs hL hh hw hv hEs ?_ ?_
  · rw [hmem']; exact Struct.rd_upd_self _ _ _
  · intro y hy; rw [hmem']; exact Struct.upd_ne hy

/-- A write to a scalar global other than an allocator pointer keeps the activation invariant. -/
theorem heap_setScalar (hH : HooksLawful a.C a.H) {g : MlS} {w : BitVec 64} (hGT : a.C.GT.lookup g = some .scalar)
    (hPG : g ∉ a.C.PG) (h1 : g ≠ gHeap) (h2 : g ≠ gFrame) (h3 : g ≠ gScratch) {Γ : Gam} {p : Ptrs} {s : State σ}
    (h : Heap a Γ p s) : Heap a Γ p (setKvarHOLFinite .global g (.val (.word w)) s) := by
  have hne : ∀ g', g' ≠ g → (setKvarHOLFinite .global g (.val (.word w)) s).globals.lookup g' = s.globals.lookup g' := by
    intro g' hg'
    exact setKvar_gw (g := g') (k := .global) (n := g) (by simpa [tgtOk] using Ne.symm hg') _ s
  have hgw : ∀ g', g' ≠ g → gword (setKvarHOLFinite .global g (.val (.word w)) s) g' = gword s g' := by
    intro g' hg'
    unfold gword
    rw [hne g' hg']
  have hpt : ptrsOf (setKvarHOLFinite .global g (.val (.word w)) s) = ptrsOf s := by
    unfold ptrsOf
    rw [hgw _ (Ne.symm h1), hgw _ (Ne.symm h2), hgw _ (Ne.symm h3)]
  obtain ⟨⟨p1, hp1, hord, hL, hF, hT, hGl, hW⟩, hps, hmono, hext, hnf, hmod, hpg, hng⟩ := h
  refine ⟨⟨p1, hpt ▸ hp1, hord, hL, hF, hT, fun g' k hk => ?_, fun o ho => ?_⟩, hpt ▸ hps, hmono, hext, hnf, hmod,
    fun g' hg' hn => ?_, hng⟩
  · by_cases e : g' = g
    · subst e
      rw [hGT] at hk
      cases hk
      exact ⟨w, by simp [gword, setKvarHOLFinite, setGlobalHOLFinite, FUPDATE], trivial⟩
    · obtain ⟨v, hv, hf⟩ := hGl g' k hk
      exact ⟨v, by rw [hgw _ e]; exact hv, hf⟩
  · exact (hH.2 Γ s (setKvarHOLFinite .global g (.val (.word w)) s) o (hW o ho) rfl rfl (fun _ _ => rfl)
      (fun g' hg' => hne g' (fun e => hPG (e ▸ hg')))).1
  · rw [hne g' (fun e => hPG (e ▸ hg'))]
    exact hpg g' hg' hn

end rules

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.ph_entry
#print axioms InitECandidate.Solver.MemSafe.Exb.heap_after_aw
#print axioms InitECandidate.Solver.MemSafe.Exb.pp_decCallAW
#print axioms InitECandidate.Solver.MemSafe.Exb.pp_decCall
#print axioms InitECandidate.Solver.MemSafe.Exb.pp_stAbove
#print axioms InitECandidate.Solver.MemSafe.Exb.pp_stByteAbove
#print axioms InitECandidate.Solver.MemSafe.Exb.pp_stCell
#print axioms InitECandidate.Solver.MemSafe.Exb.heap_setScalar
