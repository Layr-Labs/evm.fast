import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.MemSafe.Bn2.Util
import InitECandidate.Solver.MemSafe.Window
import InitECandidate.Solver.MemSafe.Alloc

set_option autoImplicit false

/-!
# A kit for functions with dynamically sized `alloc` blocks inside a heap window

The activation invariant `Heap a Γ p s` (`AEnv.lean`) plus

* `K`: a high-water mark: `K ≤ p.hp` (every block `[b, b + n)` with `MK ≤ b` and `b + n ≤ K` is live),
* `MK`: the token of an open heap window (`WinOK a Γ p .heap MK`).

`HK a K MK t` packages them. Blocks are not tracked one by one: `bufOK_blk` shows that a cell range
`[b, b + n)` with `a.p0.hp ≤ b`, `b % 8 = 0` and `b + n ≤ p.hp` is `BufOK` (an allocated cell outside `Γ`,
because no callee grows `Γ`) and outside the entry allocation (so inside the activation footprint).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- The heap invariant with a high-water mark `K` and an open heap window `MK`. -/
def HK (a : Act σ) (K : Nat) (MK : BitVec 64) (t : State σ) : Prop :=
  ∃ Γ p, Ext a.Γ0 Γ ∧ Heap a Γ p t ∧ K ≤ p.hp ∧ WinOK a Γ p .heap MK

def PK (a : Act σ) (K : Nat) (MK : BitVec 64) (L : LocalsH → Prop) (s : State σ) : Prop :=
  L s.locals ∧ HK a K MK s

/-- Statement post: a normal end keeps the locals and `HK`; any other end is not a loop jump and
keeps `HHa` unless abortive. -/
def SPK (a : Act σ) (K : Nat) (MK : BitVec 64) (L : LocalsH → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → L t.locals ∧ HK a K MK t) ∧
    ∀ r', r = some r' → r' ≠ .break ∧ r' ≠ .continue ∧ (¬ Abortive r' → HHa a t)

theorem hk_hha {a : Act σ} {K : Nat} {MK : BitVec 64} {t : State σ} (h : HK a K MK t) : HHa a t :=
  let ⟨Γ, p, he, hh, _, _⟩ := h; ⟨Γ, p, he, hh⟩

theorem hk_mono {a : Act σ} {K K' : Nat} {MK : BitVec 64} {t : State σ} (hK : K' ≤ K)
    (h : HK a K MK t) : HK a K' MK t :=
  let ⟨Γ, p, he, hh, hk, hw⟩ := h; ⟨Γ, p, he, hh, Nat.le_trans hK hk, hw⟩

theorem hk_congr {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (h : HK a K MK s) : HK a K MK t :=
  let ⟨Γ, p, he, hh, hk, hw⟩ := h; ⟨Γ, p, he, heap_congr hH hm hg hd hb hh, hk, hw⟩

theorem spk_hqa {a : Act σ} {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : SPK a K MK L r t) : HQa a r t :=
  fun r' hr hna => (h.2 r' hr).2.2 hna

theorem spk_abn {a : Act σ} {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} :
    ∀ r t, r ≠ none → (∀ r', r = some r' → r' ≠ .break ∧ r' ≠ .continue ∧ (¬ Abortive r' → HHa a t)) →
      SPK a K MK L r t :=
  fun _ _ hr h => ⟨fun h' => absurd h' hr, h⟩

/-- `seq` of a statement with `SPK` post and a continuation with the function post `HQa`. -/
theorem hoareG_seqK {a : Act σ} {P : State σ → Prop} {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {c k : ProgHOL 64} (hc : HoareG σ X P c (SPK a K MK L))
    (hk : HoareG σ X (PK a K MK L) k (HQa a)) : HoareG σ X P (.seq c k) (HQa a) :=
  hoareG_seq hc (fun r t _ hr _ h => spk_hqa h) (hoareG_pre hk fun _ _ h => ⟨(h.1 rfl).1, (h.1 rfl).2⟩)

/-- `seq` of two statements with `SPK` posts (the second with the same `K`). -/
theorem hoareG_seqK2 {a : Act σ} {P : State σ → Prop} {K K' : Nat} {MK : BitVec 64}
    {L L' : LocalsH → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (SPK a K MK L))
    (hk : HoareG σ X (PK a K MK L) k (SPK a K' MK L')) : HoareG σ X P (.seq c k) (SPK a K' MK L') :=
  hoareG_seq hc (fun r t _ hr _ h => spk_abn r t hr (h.2)) (hoareG_pre hk fun _ _ h => ⟨(h.1 rfl).1, (h.1 rfl).2⟩)

/-! ## Blocks -/

/-- **A block above the entry allocation** `[b, b + n)` (8-aligned, `a.p0.hp ≤ b`, `b + n ≤ p.hp`)
is writable with any data (`BufOK`) and lies outside the entry allocation. -/
theorem bufOK_blk {a : Act σ} {C : Cfg} (hgrow : a.sg.grows = false) (hord0 : a.p0.Ordered)
    (hL0 : Layout a.C a.p0 a.Γ0) {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    {b n : Nat} (hb8 : b % 8 = 0) (hlo : a.p0.hp ≤ b) (hhi : b + n ≤ p.hp) :
    BufOK C Γ p b n ∧ ∀ x : BitVec 64, Overlap b n x → ¬ a.p0.Allocated x.toNat := by
  obtain ⟨p1, hp1, hord, -⟩ := id hh.1
  rw [hh.2.1] at hp1
  cases hp1
  have hnf := hh.2.2.2.2.2.2.2 hgrow
  have hx : ∀ x : BitVec 64, Overlap b n x → b ≤ x.toNat := by
    rintro x ⟨h8, h1, h2⟩
    omega
  refine ⟨fun x hov => Or.inr ⟨?_, ?_⟩, fun x hov hal => ?_⟩
  · rintro ⟨o, ho, hlo', hhi'⟩
    have hbx := hx x hov
    have hxn := hov.2.2
    rcases hnf o ho x (by omega) (by omega) with ⟨o0, ho0, -, ht, hl0, hh0⟩ | hf
    · have hl := (hL0.1 o0 ho0).2.2.2.2
      unfold Obj.lo at hl hl0
      unfold Obj.hi at hh0
      unfold Ptrs.Ordered at hord hord0
      generalize (a.C.ty o0.ty).region = r at hl
      cases r <;> simp only [Region.Live] at hl <;> unfold heapBase heapEnd scratchEnd at * <;> omega
    · unfold Fresh at hf; omega
  · have hbx := hx x hov
    have hxn := hov.2.2
    unfold Ptrs.Allocated
    unfold Ptrs.Ordered at hord hord0
    unfold heapBase heapEnd scratchEnd at *
    omega
  · have hbx := hx x hov
    have hxn := hov.2.2
    unfold Ptrs.Allocated at hal
    unfold Ptrs.Ordered at hord hord0
    unfold heapBase heapEnd scratchEnd at *
    omega


/-! ## Calls -/

theorem sumCore_pw_mono' {C : Cfg} {H : Hooks σ} {sg : Sig} {PW PW' : BitVec 64 → Prop}
    {Γ : Gam} {s : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ}
    {Γ' : Gam} {p p' : Ptrs} (h : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ x, PW x → PW' x) :
    SumCore C H sg PW' Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩
  rcases ha with h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr (hPW _ h)))

theorem abn_nb {r : PanSemResultExact 64} (h : Abn r) : r ≠ .break ∧ r ≠ .continue := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩

/-- A call (hand precondition `Pre`, no result facts, no capabilities, `PW = False`) keeps the
heap invariant; also `NewFresh Γ Γ' p p` for a non-growing callee. -/
theorem heap_callK {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hR : Good (some r) → ¬ Abortive r → ∀ Γ, G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p ∧ ArgsOK a.Cb Γ p sg'.params vs) →
      Pre vs (callEntryStateHOLFinite s callee) Γ →
      ∃ Γ' p p', SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ False) Γ
        (callEntryStateHOLFinite s callee) vs r st Γ' p p' ∧ True)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgrf : sg'.grows = false) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p p ∧
      ∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core0, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ hpre
  have core : SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ CapPW [] (callEntryStateHOLFinite s callee) Γ x)
      Γ (callEntryStateHOLFinite s callee) vs r st Γ' q q' :=
    sumCore_pw_mono' core0 (fun x hx => ⟨hx.1, hx.2.elim⟩)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw (fun h => by rw [hgrf] at h; cases h)
    (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, hng', hret⟩ := core
  exact ⟨Γ', q', hext, hh', hmono, hng' hgrf, hret⟩

theorem winK_after {a : Act σ} (ha : ActOK a X) {Γ Γ' : Gam} {p p' : Ptrs} {st : State σ}
    (hh' : Heap a Γ' p' st) (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p) {MK : BitVec 64}
    (hw : WinOK a Γ p .heap MK) : WinOK a Γ' p' .heap MK := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := id hh'.1
  rw [hh'.2.1] at hp1
  cases hp1
  exact winOK_after hL hord hm hnf hw

/-- **`f(args);`** for a non-growing callee with a hand precondition and no capabilities. -/
theorem hoareG_callK {a : Act σ} (ha : ActOK a X) (hgrow : a.sg.grows = false) {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false) {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ s' : State σ, Pre vs s' Γ) :
    HoareG σ X (PK a K MK L) (.call (some (none, none)) f args) (SPK a K MK L) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    have hh2 := heap_congr (s := st) ha.hH (t := { st with locals := s.locals }) rfl rfl rfl rfl hh'
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', hh2, Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(abn_nb habn).1, (abn_nb habn).2, fun hna => ?_⟩
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'⟩


/-! ## Statements -/

theorem hoareG_assignK {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L L' : LocalsH → Prop} {n : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite n v s).locals) :
    HoareG σ X (PK a K MK L) (.assign .local n e) (SPK a K MK L') :=
  hoareG_assign fun s hs ⟨hL, hK⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, hk_congr hH (s := s) rfl rfl rfl rfl hK⟩,
      fun r' h => absurd h (by simp)⟩

theorem hoareG_decK {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L L' : LocalsH → Prop} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite n v s).locals)
    (hk : HoareG σ X (PK a K MK L') k (HQa a)) :
    HoareG σ X (PK a K MK L) (.dec n sh e k) (HQa a) := by
  refine hoareG_dec fun s hs ⟨hL, hK⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals hH _ hq)
  subst ht
  exact ⟨h s hs hL v hv, hk_congr hH (s := s) rfl rfl rfl rfl hK⟩

theorem hoareG_iteK {a : Act σ} {K : Nat} {MK : BitVec 64} {L L' : LocalsH → Prop} {c : ExpHOL 64}
    {p q : ProgHOL 64}
    (hp : HoareG σ X (fun s => PK a K MK L s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) p
      (SPK a K MK L'))
    (hq : HoareG σ X (fun s => PK a K MK L s ∧ ev s c = some (.val (.word 0))) q (SPK a K MK L')) :
    HoareG σ X (PK a K MK L) (.ite c p q) (SPK a K MK L') :=
  hoareG_ite hp hq

theorem hoareG_whileK {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {c : ExpHOL 64} {body : ProgHOL 64}
    (hb : HoareG σ X (fun s => PK a K MK L s ∧ CondTrue s c) body (SPK a K MK L)) :
    HoareG σ X (PK a K MK L) (.while c body) (SPK a K MK L) := by
  refine hoareG_while (I := PK a K MK L) (fun t h => ⟨h.1, hk_congr hH (s := t) rfl rfl rfl rfl h.2⟩) ?_
    (fun s _ hi _ => ⟨fun _ => hi, fun r' h => absurd h (by simp)⟩)
  refine hoareG_conseq hb (fun s _ h => h) ?_
  intro r t _ _ h
  refine ⟨fun hr => h.1 hr, fun hc => ?_, fun hbk => ?_, fun r' hr' h1 h2 => ?_⟩
  · exact absurd rfl (h.2 _ hc).2.1
  · exact absurd rfl (h.2 _ hbk).1
  · subst hr'; exact h

/-- **A one-word store into a block** `[b, b + n)` above the entry allocation. -/
theorem hoareG_stwK {a : Act σ} (ha : ActOK a X) (hgrow : a.sg.grows = false)
    (hL0 : Layout a.C a.p0 a.Γ0) {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w : BitVec 64, ev s ea = some (.val (.word w)) →
      ∃ b n : Nat, b % 8 = 0 ∧ a.p0.hp ≤ b ∧ b + n ≤ K ∧ b ≤ w.toNat ∧ w.toNat < b + n)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (PK a K MK L) (.store ea ev') (SPK a K MK L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ w v mem hw' hv hst => ?_
  obtain ⟨x, hx⟩ := hval s hL v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst
  have hw8 := ha.hal w (hs.2.1 ▸ hdom)
  obtain ⟨b, n, hb8, hlo, hhi, hb1, hb2⟩ := haddr s hs hL w hw'
  obtain ⟨hbuf, hfree⟩ := bufOK_blk (C := a.Cb) hgrow ha.hord0 hL0 hh hb8 hlo
    (Nat.le_trans hhi hK)
  have hov : Overlap b n w := ⟨hw8, by omega, hb2⟩
  have hc := hbuf w hov
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hK, hw⟩, fun r' h => absurd h (by simp)⟩
  refine heap_store_buf ha hh hm (fun y hy => ?_) (fun y hy => ?_)
  · subst hy
    rcases hc with h | ⟨h, -⟩
    · exact Or.inl h
    · exact Or.inr h
  · subst hy
    exact Or.inr (Or.inr (Or.inl (hfree _ hov)))

/-- **`var rn = f(args); k`** for a non-growing callee with a hand precondition and a value spec
`R'` (the returned word `w` satisfies `Fct w`). -/
theorem hoareG_decCallK {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {L' : BitVec 64 → LocalsH → Prop}
    {Fct : BitVec 64 → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (hret : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → ∃ w, v = .val (.word w) ∧ Fct w)
    (hL' : ∀ (s st : State σ) (w : BitVec 64), L s.locals →
      L' w (setVarHOLFinite rn (.val (.word w)) { st with locals := s.locals }).locals)
    (hk : ∀ w, Fct w → HoareG σ X (PK a K MK (L' w)) k (HQa a)) :
    HoareG σ X (PK a K MK L) (.decCall rn sh f args k) (HQa a) := by
  refine hoareG_decCall (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    obtain ⟨w, rfl, hFw⟩ := hret s hL vs hvs callee v st hR' hsh
    refine hoareG_conseq (hk w hFw) (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st w hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    cases hr'
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- **`var x = alloc(e); k`** with `e` evaluating to the constant size `n` (`0 < n`): the new block
`[q, q + n)` raises the high-water mark to `q + n`. -/
theorem hoareG_decAllocK {a : Act σ} (ha : ActOK a X)
    (hAl : AllocSpec σ X (nm "alloc") .heap) (hC : Summ σ X a.Cb a.H (nm "alloc") allocSig)
    {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {L' : BitVec 64 → LocalsH → Prop} (n : Nat) (hn0 : 0 < n) (hn : n < 2 ^ 32)
    (he : ∀ s : State σ, L s.locals → ev s e = some (.val (.word (BitVec.ofNat 64 n))))
    (hL' : ∀ (s st : State σ) (q : BitVec 64), L s.locals →
      L' q (setVarHOLFinite x (.val (.word q)) { st with locals := s.locals }).locals)
    (hk : ∀ q : BitVec 64, q.toNat % 8 = 0 → K ≤ q.toNat →
      HoareG σ X (PK a (q.toNat + n) MK (L' q)) k (HQa a)) :
    HoareG σ X (PK a K MK L) (.decCall x .one (nm "alloc") [e] k) (HQa a) := by
  have hn' : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine hoareG_decCall (FunSpec.and (sumSpecA_of_sumSpec hC) hAl) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he', hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    rw [evs_cons (he s hL) evs_nil] at hvs
    cases hvs
    have hA : ArgsOK a.Cb Γ p allocSig.params [.val (.word (BitVec.ofNat 64 n))] :=
      argsOK_any (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Γ', q', he'', hh', hmo, hnf, -⟩ := heap_callK (Pre := fun _ _ _ => True) ha hh hR (by simp [Good])
      (by simp [Abortive]) hA trivial
      (fun y hy => absurd hy (argCells_any (by simp [allocSig]))) (by simp [allocSig])
      (by simp [allocSig])
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
    obtain ⟨-, -, p', hp', hord', hm', hret⟩ := hR' (by simp [Good]) _ p rfl hpe (heap_ord hh)
    obtain ⟨q, rfl, hq8, hlive, hfree⟩ := hret v rfl
    have hpq : p' = q' := by rw [hh'.2.1] at hp'; exact (Option.some.inj hp').symm
    subst hpq
    rw [hn'] at hlive hfree
    simp only [Region.Live] at hlive
    have hq1 : p.hp ≤ q.toNat := by
      by_contra hcon
      exact hfree q.toNat le_rfl (by omega) (Or.inl ⟨hlive.1, by omega⟩)
    refine hoareG_conseq (hk q hq8 (Nat.le_trans hK hq1))
      (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    rw [hn'] at *
    exact ⟨hL' s st q hL, Γ', p', ext_trans he' he'',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', hlive.2, winK_after ha hh' hmo hnf hw⟩
  · intro s hs ⟨hL, Γ, p, he', hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    cases hr'
    rw [evs_cons (he s hL) evs_nil] at hvs
    cases hvs
    have hA : ArgsOK a.Cb Γ p allocSig.params [.val (.word (BitVec.ofNat 64 n))] :=
      argsOK_any (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Γ', q', he'', hh', -⟩ := heap_callK (Pre := fun _ _ _ => True) ha hh hR (abn_good' habn) hna hA trivial
      (fun y hy => absurd hy (argCells_any (by simp [allocSig]))) (by simp [allocSig])
      (by simp [allocSig])
    exact ⟨Γ', q', ext_trans he' he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- Post of a statement that always ends abnormally: not a loop jump, keeps `HHa` unless abortive. -/
def RQ (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r ≠ none ∧ ∀ r', r = some r' → r' ≠ .break ∧ r' ≠ .continue ∧ (¬ Abortive r' → HHa a t)

theorem rq_hqa {a : Act σ} {r : Option (PanSemResultExact 64)} {t : State σ} (h : RQ a r t) :
    HQa a r t := fun r' hr hna => (h.2 r' hr).2.2 hna

theorem rq_spk {a : Act σ} {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : RQ a r t) : SPK a K MK L r t :=
  ⟨fun hr => absurd hr h.1, h.2⟩

/-- **`heap_release(mark); return 0`** closes the window `MK`. -/
theorem hoareG_relRet {a : Act σ} (ha : ActOK a X) (hrel : ReleaseSpec σ X (nm "heap_release") gHeap)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    (hmk : ∀ s : State σ, L s.locals → ev s (lv (nm "mark")) = some (.val (.word MK))) :
    HoareG σ X (PK a K MK L) (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0)))
      (RQ a) := by
  refine hoareG_seq (R := fun r t => (r = none → HHa a t) ∧ (r ≠ none → RQ a r t)) ?_
    (fun r t _ hr _ h => h.2 hr) ?_
  · refine hoareG_callD (FunSpec.and hrel (funSpec_be' (nm "heap_release"))) ?_ ?_
    · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx
      rw [evs_cons (hmk s hL) evs_nil] at hvs
      cases hvs
      obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) MK rfl
      have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
      have hh1 := release_heap ha hh hw hm hg1 hg2 hd hbe
      exact ⟨fun _ => hha_congr (s := st) ha.hH rfl rfl rfl rfl ⟨Γ, _, he, hh1⟩,
        fun h => absurd h (by simp)⟩
    · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn
      rw [evs_cons (hmk s hL) evs_nil] at hvs
      cases hvs
      obtain ⟨hm, hg1, hg2⟩ := hR (abn_good' habn) MK rfl
      have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
      have hh1 := release_heap ha hh hw hm hg1 hg2 hd hbe
      refine ⟨fun h => absurd h (by simp), fun _ => ⟨by simp, fun r' hr' => ?_⟩⟩
      cases hr'
      exact ⟨(abn_nb habn).1, (abn_nb habn).2, fun hna =>
        ⟨Γ, _, he, heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh1⟩⟩
  · refine hoareG_return fun t _ h v hv => ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    exact ⟨by simp, by simp, fun _ => hha_congr (s := t) ha.hH rfl rfl rfl rfl (h.1 rfl)⟩

/-- A block range may be shortened. -/
theorem bufOK_le {C : Cfg} {Γ : Gam} {p : Ptrs} {b n m : Nat} (h : BufOK C Γ p b n) (hm : m ≤ n) :
    BufOK C Γ p b m := fun x hx => h x ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩

theorem overlap_le {b n m : Nat} {x : BitVec 64} (hm : m ≤ n) (h : Overlap b m x) : Overlap b n x :=
  ⟨h.1, h.2.1, by have := h.2.2; omega⟩

/-- The block list invariant: all blocks are 8-aligned, above the entry allocation, below `K`. -/
def BO (a : Act σ) (bs : List (Nat × Nat)) (K : Nat) : Prop :=
  a.p0.hp ≤ K ∧ ∀ b ∈ bs, a.p0.hp ≤ b.1 ∧ b.1 % 8 = 0 ∧ b.1 + b.2 ≤ K

theorem bo_nil {a : Act σ} {K : Nat} (h : a.p0.hp ≤ K) : BO a [] K := ⟨h, fun b hb => by simp at hb⟩

theorem bo_cons {a : Act σ} {bs : List (Nat × Nat)} {K q n : Nat} (h : BO a bs K) (hq8 : q % 8 = 0)
    (hKq : K ≤ q) : BO a ((q, n) :: bs) (q + n) := by
  refine ⟨by have := h.1; omega, fun b hb => ?_⟩
  rcases List.mem_cons.mp hb with rfl | hb
  · exact ⟨by have := h.1; omega, hq8, le_rfl⟩
  · have := h.2 b hb
    exact ⟨this.1, this.2.1, by have := this.2.2; omega⟩

theorem bo_mono {a : Act σ} {bs : List (Nat × Nat)} {K K' : Nat} (h : BO a bs K) (hK : K ≤ K') :
    BO a bs K' :=
  ⟨Nat.le_trans h.1 hK, fun b hb => let t := h.2 b hb; ⟨t.1, t.2.1, Nat.le_trans t.2.2 hK⟩⟩

/-- **A block of the list**, or any prefix `m ≤ n` of it, is writable and in the footprint. -/
theorem blk_of_bo {a : Act σ} (hgrow : a.sg.grows = false) (hord0 : a.p0.Ordered)
    (hL0 : Layout a.C a.p0 a.Γ0) {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    {bs : List (Nat × Nat)} {K : Nat} (hbo : BO a bs K) (hK : K ≤ p.hp) {b n m : Nat}
    (hb : (b, n) ∈ bs) (hm : m ≤ n) (C : Cfg) :
    BufOK C Γ p b m ∧ ∀ x : BitVec 64, Overlap b m x → a.Foot x := by
  obtain ⟨hlo, hb8, hhi⟩ := hbo.2 (b, n) hb
  obtain ⟨hbuf, hfree⟩ := bufOK_blk (C := C) hgrow hord0 hL0 hh hb8 hlo
    (n := m) (by dsimp only at hhi; omega)
  exact ⟨hbuf, fun x hx => Or.inr (Or.inr (Or.inl (hfree x hx)))⟩

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.bufOK_blk
#print axioms InitECandidate.Solver.MemSafe.Mod.heap_callK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_callK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_whileK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_stwK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_decCallK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_decAllocK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_relRet
#print axioms InitECandidate.Solver.MemSafe.Mod.blk_of_bo
