import InitECandidate.Solver.MemSafe.Rec.DIPre
import InitECandidate.Solver.MemSafe.Dn.Resolve2
import InitECandidate.Solver.MemSafe.Trie.CsrKit

/-!
# A statement kit without "no new scratch objects"

`Dn`'s `GI` / `GP` keep `ScrOld`, which a callee that may add objects and uses the scratch stack (`decode_transaction`) does not export.
`HJ` / `HP` are the same statements without it, for bodies that release no scratch window. Calls take an all-`any` callee with a `Pre`
(`hp_decCall`, from `Rec.heap_callMP`), so the client sees the memory frame through `COut`.
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

def HJ (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → Prop) (t : State σ) : Prop :=
  L t.locals ∧ ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q t ∧ E Γ q t.memory

def HX (a : Act σ) (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop) (r' : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ((∃ v, r' = .returned v) ∨ Abn r') ∧ (¬ Abortive r' → ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧
    Heap a Γ q t ∧ ∀ v, r' = .returned v → Rv Γ q t.memory v)

def HP (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → Prop)
    (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (r = none → HJ a L E t) ∧ ∀ r', r = some r' → HX a Rv r' t

section rules
variable {a : Act σ} {L L' L2 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

theorem hx_locals (hH : HooksLawful a.C a.H) {r' : PanSemResultExact 64} {t : State σ} (Lc : LocalsH)
    (h : HX a Rv r' t) : HX a Rv r' { t with locals := Lc } := by
  refine ⟨h.1, fun hna => ?_⟩
  obtain ⟨Γ, q, he, hh, hv⟩ := h.2 hna
  exact ⟨Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hv⟩

theorem hj_locals (hH : HooksLawful a.C a.H) {t : State σ} (Lc : LocalsH) (hL : L' Lc) (h : HJ a L E t) :
    HJ a L' E { t with locals := Lc } := by
  obtain ⟨-, Γ, q, he, hh, hE⟩ := h
  exact ⟨hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hE⟩

theorem hp_seq {P : State σ → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (HP a L E Rv))
    (hk : HoareG σ X (HJ a L E) k (HP a L' E' Rv)) : HoareG σ X P (.seq c k) (HP a L' E' Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem hp_skip {P : State σ → Prop} (hP : ∀ s : State σ, P s → HJ a L E s) :
    HoareG σ X P .skip (HP a L E Rv) :=
  hoareG_skip fun s _ h => ⟨fun _ => hP s h, fun r' h => by cases h⟩

theorem hp_assign (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (HJ a L E) (.assign .local x e) (HP a L' E Rv) :=
  hoareG_assign fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hE⟩,
      fun r' h => by cases h⟩

/-- `var x = e; body`; the new locals may depend on the memory. -/
theorem hp_decM (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 L3 : LocalsH → Prop}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → E Γ q s.memory → ∀ v,
      ev s e = some v → L1 (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (HJ a L1 E) body (HP a L2 E' Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (HJ a L E) (.dec x sh e body) (HP a L3 E' Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s Γ q hs hL hE v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hE⟩
  · refine ⟨fun hr => ?_, fun r' hr' => hx_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact hj_locals hH _ (hres s.locals t.locals hL hg.1) hg

theorem hp_ret {e : ExpHOL 64} (hH : HooksLawful a.C a.H)
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Ext a.Γ0 Γ →
      Heap a Γ q s → E Γ q s.memory → ∀ v, ev s e = some v → Rv Γ q s.memory v) :
    HoareG σ X (HJ a L E) (.return e) (HP a L2 E2 Rv) :=
  hoareG_return fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv => by
    refine ⟨(fun h' => by cases h'), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inl ⟨v, rfl⟩, fun _ => ⟨Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, fun v' hv' => ?_⟩⟩
    cases hv'
    exact h s Γ q hs hL he hh hE v hv

/-- `if c { return e; }`. -/
theorem hp_iteRet0 (hH : HooksLawful a.C a.H) {c e : ExpHOL 64} :
    HoareG σ X (HJ a L E) (.ite c (.return e) .skip) (HP a L E fun _ _ _ _ => True) :=
  hoareG_ite (hoareG_pre (hp_ret hH fun _ _ _ _ _ _ _ _ _ _ => trivial) fun _ _ h => h.1)
    (hp_skip fun _ h => h.1)

/-- The loop: the body never `continue`s or `break`s. -/
theorem hp_while (hH : HooksLawful a.C a.H) {c : ExpHOL 64} {body : ProgHOL 64}
    {Lx : LocalsH → Prop}
    (hb : HoareG σ X (fun s => HJ a L E s ∧ CondTrue s c) body (HP a L E Rv))
    (hexit : ∀ s : State σ, InCtx s X → HJ a L E s → ev s c = some (.val (.word 0)) →
      HJ a Lx E s) :
    HoareG σ X (HJ a L E) (.while c body) (HP a Lx E Rv) := by
  refine hoareG_while (I := HJ a L E) ?_ ?_ (fun s hs hi hc => ⟨fun _ => hexit s hs hi hc,
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

/-- **`var x = f(args); k`** for an all-`any` callee with a `Pre`, no extra writes. -/
theorem hp_decCall (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hl : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 L3 : LocalsH → Prop} {E1 : Gam → Ptrs → Mem → Prop} {k : ProgHOL 64}
    (hPre : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs → ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs), InCtx s X → L s.locals → E Γ q s.memory →
      COut a sg' Γ Γ' q q' s st → E1 Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L1 (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : HoareG σ X (HJ a L1 E1) k (HP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (HJ a L E) (.decCall rn sh f args k) (HP a L3 E2 Rv) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st hR _ hsh
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMP ha hh hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (by rw [evs_len2 hvs]; exact hl)) hps
      (hPre s Γ q hs hL hh hE vs hvs callee) hgw hgr
    have hE1 := hpost s st Γ Γ' q q' hs hL hE ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩
    refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st v hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', hE1⟩
    · refine ⟨fun hr => ?_, fun r' hr' => hx_locals ha.hH _ (hq.2 r' hr')⟩
      have hg := hq.1 hr
      exact hj_locals ha.hH _ (hres s.locals t.locals hL hg.1) hg
  · intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee r st hR _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMP ha hh hR (abn_good' habn) hna
      (argsOK_any hps (by rw [evs_len2 hvs]; exact hl)) hps (hPre s Γ q hs hL hh hE vs hvs callee) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end rules

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.hp_decCall
#print axioms InitECandidate.Solver.MemSafe.Exb.hp_while
