import InitECandidate.Solver.MemSafe.WaveHelpers.Run
import InitECandidate.Solver.MemSafe.Helpers.Basic
import InitECandidate.Solver.MemSafe.Struct.Eval

set_option autoImplicit false

/-!
# Statement rules in the activation invariant

The statement post `SPA a L`: a normal end keeps the locals invariant `L` and the activation
invariant (`HHa`); an abnormal end is an `Abn` result (exception or final FFI event) that keeps
the activation invariant unless it is abortive. Calls to capability-summary callees, local
assignments, byte stores into `scalar` cells, `skip`, `ite`, `dec` and sequencing.
-/

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

abbrev LocalsH := HolFiniteMapExact MlS (ValueHOL 64)

def SPA (a : Act σ) (L : LocalsH → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (r = none → L t.locals ∧ HHa a t) ∧ ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)

def PreH (a : Act σ) (L : LocalsH → Prop) (s : State σ) : Prop := L s.locals ∧ HHa a s

theorem hqa_of_spa {a : Act σ} {L : LocalsH → Prop} {r : Option (PanSemResultExact 64)}
    {t : State σ} (h : ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) : HQa a r t :=
  fun r' hr hna => (h r' hr).2 hna

theorem hqa_locals {a : Act σ} (hH : HooksLawful a.C a.H) {r : Option (PanSemResultExact 64)}
    {t : State σ} (L : LocalsH) (h : HQa a r t) : HQa a r { t with locals := L } :=
  fun r' hr hna => hha_congr (s := t) hH rfl rfl rfl rfl (h r' hr hna)

/-- **A call to a capability-summary callee.** -/
theorem hoareG_callSP {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {L : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x) :
    HoareG σ X (PreH a L) (.call (some (none, none)) f args) (SPA a L) := by
  refine hoareG_callD (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive]) hA hF
      hgw hgr
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩,
      fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- Sequencing with a statement whose post is `SPA`. -/
theorem hoareG_seqSP {a : Act σ} {P : State σ → Prop} {L : LocalsH → Prop} {c k : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r t, r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) → Q r t)
    (hc : HoareG σ X P c (SPA a L)) (hk : HoareG σ X (PreH a L) k Q) :
    HoareG σ X P (.seq c k) Q :=
  hoareG_seq hc (fun r t _ hr _ h => hQ r t hr h.2) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem spa_of_abn {a : Act σ} {L : LocalsH → Prop} :
    ∀ r t, r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) → SPA a L r t :=
  fun _ _ hr h => ⟨fun h' => absurd h' hr, h⟩

theorem hqa_of_abn {a : Act σ} :
    ∀ r t, r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) → HQa a r t :=
  fun _ _ _ h => hqa_of_spa (L := fun _ => True) h

/-- A local assignment. -/
theorem hoareG_assignSP {a : Act σ} (hH : HooksLawful a.C a.H) {L L' : LocalsH → Prop} {n : MlS}
    {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite n v s).locals) :
    HoareG σ X (PreH a L) (.assign .local n e) (SPA a L') :=
  hoareG_assign fun s hs ⟨hL, hH'⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, hha_congr (s := s) hH rfl rfl rfl rfl hH'⟩,
      fun r' h => absurd h (by simp)⟩

theorem hoareG_skipSP {a : Act σ} {L L' : LocalsH → Prop} (h : ∀ m, L m → L' m) :
    HoareG σ X (PreH a L) .skip (SPA a L') :=
  hoareG_skip fun _ _ ⟨hL, hH'⟩ => ⟨fun _ => ⟨h _ hL, hH'⟩, fun r' h => absurd h (by simp)⟩

/-- A byte store into a `scalar` cell of the current `Γ`. -/
theorem hoareG_stbSP {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) → SCell a.Cb Γ (panByteAlignHOL w)) :
    HoareG σ X (PreH a L) (.storeByte ea ev') (SPA a L) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, p, he, hh⟩ w x mem hw _ hst => ?_
  have hm := Helpers.storeByte_mod hst
  have hc := haddr s hs hL Γ p he hh w hw
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_scell ha hh hm fun y hy => hy ▸ hc⟩,
    fun r' h => absurd h (by simp)⟩

/-- `ite` with branches ending in `SPA`. -/
theorem hoareG_iteSP {a : Act σ} {L L' : LocalsH → Prop} {c : ExpHOL 64} {p q : ProgHOL 64}
    (hp : HoareG σ X (fun s => PreH a L s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) p
      (SPA a L'))
    (hq : HoareG σ X (fun s => PreH a L s ∧ ev s c = some (.val (.word 0))) q (SPA a L')) :
    HoareG σ X (PreH a L) (.ite c p q) (SPA a L') :=
  hoareG_ite hp hq

/-- `var x = e; k` with a post that ignores locals. -/
theorem hoareG_decH {a : Act σ} (hH : HooksLawful a.C a.H) {L L' : LocalsH → Prop} {n : MlS}
    {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite n v s).locals)
    (hk : HoareG σ X (PreH a L') k (HQa a)) :
    HoareG σ X (PreH a L) (.dec n sh e k) (HQa a) := by
  refine hoareG_dec fun s hs ⟨hL, hH'⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals hH _ hq)
  subst ht
  exact ⟨h s hs hL v hv, hha_congr (s := s) hH rfl rfl rfl rfl hH'⟩

/-- `var x = e; k` with `SPA` posts (the post locals invariant survives restoring `x`). -/
theorem hoareG_decSP {a : Act σ} (hH : HooksLawful a.C a.H) {L L' L0' L0 : LocalsH → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite n v s).locals)
    (hk : HoareG σ X (PreH a L') k (SPA a L0'))
    (hres : ∀ m old, L0' m → L0 (m.resVarEq (n, old))) :
    HoareG σ X (PreH a L) (.dec n sh e k) (SPA a L0) := by
  refine hoareG_dec fun s hs ⟨hL, hH'⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, hha_congr (s := s) hH rfl rfl rfl rfl hH'⟩
  · refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
    · obtain ⟨h1, h2⟩ := hq.1 hr
      exact ⟨hres _ _ h1, hha_congr (s := t) hH rfl rfl rfl rfl h2⟩
    · obtain ⟨h1, h2⟩ := hq.2 r' hr'
      exact ⟨h1, fun hna => hha_congr (s := t) hH rfl rfl rfl rfl (h2 hna)⟩

/-- `var x = f(args); k` for a capability-summary callee, with `SPA` posts. -/
theorem hoareG_decCallSP {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L L' L0' L0 : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (h : ∀ s : State σ, L s.locals → ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' (setVarHOLFinite rn v s).locals)
    (hk : HoareG σ X (PreH a L') k (SPA a L0'))
    (hres : ∀ m old, L0' m → L0 (m.resVarEq (rn, old))) :
    HoareG σ X (PreH a L) (.decCall rn sh f args k) (SPA a L0) := by
  refine hoareG_decCall (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee v st hR _ hsh
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive]) hA hF
      hgw hgr
    refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨h s hL v hsh, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩
    · refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
      · obtain ⟨h1, h2⟩ := hq.1 hr
        exact ⟨hres _ _ h1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h2⟩
      · obtain ⟨h1, h2⟩ := hq.2 r' hr'
        exact ⟨h1, fun hna => hha_congr (s := t) ha.hH rfl rfl rfl rfl (h2 hna)⟩
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- A store whose changed cells are buffer cells of the current state and in the footprint. -/
theorem heap_store_buf {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {mem : Mem} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory mem)
    (hR : ∀ x, R x → SCell a.Cb Γ x ∨ ¬ InObj Γ x.toNat) (hf : ∀ x, R x → a.Foot x) :
    Heap a Γ p { s with memory := mem } := by
  refine heap_write ha hh hmod (fun x hx => ?_) (fun o ho k hk hx => ?_) hf
  · rcases hR x hx with ⟨o, ho, k, hk, hsc, he⟩ | hn
    · refine Or.inr ⟨o, ho, k, hk, ?_, he⟩
      rw [ha.hupg]
      show (a.Cb.ty o.ty).slot k ≠ .prot
      rw [hsc]
      decide
    · exact Or.inl hn
  · obtain ⟨p1, -, hord, hL, -⟩ := hh.1
    rcases hR _ hx with ⟨o', ho', k', hk', hsc, he⟩ | hn
    · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      rw [ha.hupg]
      show Fits Γ ((a.Cb.ty o.ty).slot k) _
      rw [hsc]
      trivial
    · exact absurd (cell_in hord hL ho hk) hn

/-- A byte store into a buffer cell of the current state that is in the footprint. -/
theorem hoareG_stbBufSP {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) →
        (SCell a.Cb Γ (panByteAlignHOL w) ∨ ¬ InObj Γ (panByteAlignHOL w).toNat) ∧
          a.Foot (panByteAlignHOL w)) :
    HoareG σ X (PreH a L) (.storeByte ea ev') (SPA a L) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, p, he, hh⟩ w x mem hw _ hst => ?_
  have hm := Helpers.storeByte_mod hst
  have hc := haddr s hs hL Γ p he hh w hw
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_buf ha hh hm (fun y hy => hy ▸ hc.1)
    (fun y hy => hy ▸ hc.2)⟩, fun r' h => absurd h (by simp)⟩

/-- `var x = f(args); k` for a capability-summary callee with an extra return spec `R'`. -/
theorem hoareG_decCallSP2 {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R')
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L L' L0' L0 : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (h : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → L' (setVarHOLFinite rn v s).locals)
    (hk : HoareG σ X (PreH a L') k (SPA a L0'))
    (hres : ∀ m old, L0' m → L0 (m.resVarEq (rn, old))) :
    HoareG σ X (PreH a L) (.decCall rn sh f args k) (SPA a L0) := by
  refine hoareG_decCall ((summ_funSpec hf).and hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive]) hA hF
      hgw hgr
    refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨h s hL vs hvs callee v st hR' hsh, Γ', q', ext_trans he he',
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩
    · refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
      · obtain ⟨h1, h2⟩ := hq.1 hr
        exact ⟨hres _ _ h1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h2⟩
      · obtain ⟨h1, h2⟩ := hq.2 r' hr'
        exact ⟨h1, fun hna => hha_congr (s := t) ha.hH rfl rfl rfl rfl (h2 hna)⟩
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- `var x = f(args); k` with the post `HQa` (`k` may return). -/
theorem hoareG_decCallH2 {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R')
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L L' : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (h : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → L' (setVarHOLFinite rn v s).locals)
    (hk : HoareG σ X (PreH a L') k (HQa a)) :
    HoareG σ X (PreH a L) (.decCall rn sh f args k) (HQa a) := by
  refine hoareG_decCall ((summ_funSpec hf).and hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive]) hA hF
      hgw hgr
    refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    exact ⟨h s hL vs hvs callee v st hR' hsh, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    cases hr'
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- An existential locals invariant. -/
theorem hoareG_exH {a : Act σ} {α : Type} {L : α → LocalsH → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ x, HoareG σ X (PreH a (L x)) p Q) :
    HoareG σ X (PreH a (fun m => ∃ x, L x m)) p Q :=
  fun s hs ⟨⟨x, hx⟩, hH'⟩ => h x s hs ⟨hx, hH'⟩

/-- A one-word store into a `scalar` cell of the current `Γ`. -/
theorem hoareG_stwSP {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) → w.toNat % 8 = 0 → SCell a.Cb Γ w)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (PreH a L) (.store ea ev') (SPA a L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh⟩ w v mem hw hv hst => ?_
  obtain ⟨x, hx⟩ := hval s hL v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst
  have hc := haddr s hs hL Γ p he hh w hw (ha.hal w (hs.2.1 ▸ hdom))
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_scell ha hh hm fun y hy => hy ▸ hc⟩,
    fun r' h => absurd h (by simp)⟩

/-- **Eon.** A one-word store of a word below `2^32` into a `bnd` cell of the current `Γ`. -/
theorem hoareG_stwBSP {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) → w.toNat % 8 = 0 → BCell a.Cb Γ w)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v →
      ∃ x : BitVec 64, v = .val (.word x) ∧ x.toNat < 2 ^ 32) :
    HoareG σ X (PreH a L) (.store ea ev') (SPA a L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh⟩ w v mem hw hv hst => ?_
  obtain ⟨x, hx, hxb⟩ := hval s hL v hv
  subst hx
  have hmem := InitECandidate.Solver.MemSafe.Struct.store_word hst
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x)) = [HolWordLab.word x] := by simp [flattenHOL]
  rw [hf] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod (x := HolWordLab.word x) hst
  have hc := haddr s hs hL Γ p he hh w hw (ha.hal w (hs.2.1 ▸ hdom))
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_bcell ha hh hm (fun y hy => hy ▸ hc)
    (fun y hy => by subst hy; show (rd mem y).toNat < 2 ^ 32; rw [hmem, InitECandidate.Solver.MemSafe.Struct.rd_upd_self]; exact hxb)⟩,
    fun r' h => absurd h (by simp)⟩

end InitECandidate.Solver.MemSafe.WaveHelpers
