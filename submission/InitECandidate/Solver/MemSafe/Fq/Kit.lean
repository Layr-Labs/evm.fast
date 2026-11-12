import InitECandidate.Solver.MemSafe.Mod.KitC
import InitECandidate.Solver.MemSafe.Mod.Args
import InitECandidate.Solver.MemSafe.Bn2.Submul
import InitECandidate.Solver.Spec.Fq12.CodeFq12Inv
import InitECandidate.Solver.Spec.Fq12.IzbDeg
import InitECandidate.Solver.Spec.Fq12.DegStep

set_option autoImplicit false

/-!
# Rules with a `break` and a restoring `dec`, in the block kit (for `fq12_inv`)

`SPB a K MK L Lb`: statement post of a loop body: a normal end keeps `L` and `HK`; a `break` keeps
`Lb` and `HK`; any other end is not a `continue` and keeps `HHa` unless abortive.
(`SPK a K MK L` is `SPB a K MK L (fun _ => False)`.)

* `hoareG_seqB`, `hoareG_breakB`, `hoareG_decB`, `hoareG_decCallB` (restoring the declared local),
* `hoareG_callAK` (`x = f(args);`), `hoareG_whileB` (a loop whose body may `break`),
* `hoareG_st4K`: a four-word store into a block above the entry allocation.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

def SPB (a : Act σ) (K : Nat) (MK : BitVec 64) (L Lb : LocalsH → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → L t.locals ∧ HK a K MK t) ∧
  (r = some .break → Lb t.locals ∧ HK a K MK t) ∧
  ∀ r', r = some r' → r' ≠ .continue ∧ (r' ≠ .break → ¬ Abortive r' → HHa a t)

theorem spk_spb {a : Act σ} {K : Nat} {MK : BitVec 64} {L Lb : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : SPK a K MK L r t) :
    SPB a K MK L Lb r t := by
  refine ⟨h.1, fun hr => absurd hr ?_, fun r' hr' => ?_⟩
  · intro hr; exact (h.2 _ hr).1 rfl
  · obtain ⟨h1, h2, h3⟩ := h.2 r' hr'
    exact ⟨h2, fun _ => h3⟩

theorem rq_spb {a : Act σ} {K : Nat} {MK : BitVec 64} {L Lb : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : RQ a r t) :
    SPB a K MK L Lb r t := spk_spb (rq_spk h)

theorem spb_spk {a : Act σ} {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : SPB a K MK L (fun _ => False) r t) : SPK a K MK L r t := by
  refine ⟨h.1, fun r' hr' => ?_⟩
  obtain ⟨h2, h3⟩ := h.2.2 r' hr'
  have hb : r' ≠ .break := by
    rintro rfl; exact (h.2.1 hr').1
  exact ⟨hb, h2, h3 hb⟩

theorem hoareG_toB {a : Act σ} {P : State σ → Prop} {K : Nat} {MK : BitVec 64} {L Lb : LocalsH → Prop}
    {c : ProgHOL 64} (h : HoareG σ X P c (SPK a K MK L)) : HoareG σ X P c (SPB a K MK L Lb) :=
  hoareG_conseq h (fun s _ h => h) (fun r t _ _ q => spk_spb q)

theorem spk_mono {a : Act σ} {K : Nat} {MK : BitVec 64} {L L' : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (hL : ∀ m, L m → L' m)
    (h : SPK a K MK L r t) : SPK a K MK L' r t :=
  ⟨fun hr => ⟨hL _ (h.1 hr).1, (h.1 hr).2⟩, h.2⟩

theorem spb_mono {a : Act σ} {K : Nat} {MK : BitVec 64} {L L' Lb Lb' : LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (hL : ∀ m, L m → L' m) (hb : ∀ m, Lb m → Lb' m)
    (h : SPB a K MK L Lb r t) : SPB a K MK L' Lb' r t :=
  ⟨fun hr => ⟨hL _ (h.1 hr).1, (h.1 hr).2⟩, fun hr => ⟨hb _ (h.2.1 hr).1, (h.2.1 hr).2⟩, h.2.2⟩

/-- `seq` of a statement with an `SPB` post and one with the same `Lb`. -/
theorem hoareG_seqB {a : Act σ} {P : State σ → Prop} {K : Nat} {MK : BitVec 64}
    {L1 L2 Lb : LocalsH → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (SPB a K MK L1 Lb))
    (hk : HoareG σ X (PK a K MK L1) k (SPB a K MK L2 Lb)) :
    HoareG σ X P (.seq c k) (SPB a K MK L2 Lb) := by
  refine hoareG_seq hc (fun r t _ hr _ h => ?_) (hoareG_pre hk fun _ _ h => ⟨(h.1 rfl).1, (h.1 rfl).2⟩)
  exact ⟨fun h' => absurd h' hr, h.2.1, h.2.2⟩

theorem hoareG_breakB {a : Act σ} {K : Nat} {MK : BitVec 64} {L L' Lb : LocalsH → Prop}
    (h : ∀ m, L m → Lb m) :
    HoareG σ X (PK a K MK L) .break (SPB a K MK L' Lb) :=
  hoareG_break fun s _ ⟨hL, hK⟩ =>
    ⟨(fun h' => absurd h' (by simp)), fun _ => ⟨h _ hL, hK⟩, fun r' hr' => by cases hr'; exact ⟨by simp, fun h => absurd rfl h⟩⟩

theorem hoareG_decB {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L L' L1 L0 Lb1 Lb0 : LocalsH → Prop} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true → L' (setVarHOLFinite n v s).locals)
    (hk : HoareG σ X (PK a K MK L') k (SPB a K MK L1 Lb1))
    (hres : ∀ m old, L1 m → L0 (m.resVarEq (n, old)))
    (hresb : ∀ m old, Lb1 m → Lb0 (m.resVarEq (n, old))) :
    HoareG σ X (PK a K MK L) (.dec n sh e k) (SPB a K MK L0 Lb0) := by
  refine hoareG_dec fun s hs ⟨hL, hK⟩ v hv hsh => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv hsh, hk_congr hH (s := s) rfl rfl rfl rfl hK⟩
  · refine ⟨fun hr => ?_, fun hr => ?_, fun r' hr' => ?_⟩
    · obtain ⟨h1, h2⟩ := hq.1 hr
      exact ⟨hres _ _ h1, hk_congr hH (s := t) rfl rfl rfl rfl h2⟩
    · obtain ⟨h1, h2⟩ := hq.2.1 hr
      exact ⟨hresb _ _ h1, hk_congr hH (s := t) rfl rfl rfl rfl h2⟩
    · obtain ⟨h1, h2⟩ := hq.2.2 r' hr'
      exact ⟨h1, fun hb hna => hha_congr (s := t) hH rfl rfl rfl rfl (h2 hb hna)⟩

/-- `var n = e; k` where the locals invariant after the declaration depends on the value. -/
theorem hoareG_decBv {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L L1 L0 Lb1 Lb0 : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true → L' v (setVarHOLFinite n v s).locals)
    (hk : ∀ v, HoareG σ X (PK a K MK (L' v)) k (SPB a K MK L1 Lb1))
    (hres : ∀ m old, L1 m → L0 (m.resVarEq (n, old)))
    (hresb : ∀ m old, Lb1 m → Lb0 (m.resVarEq (n, old))) :
    HoareG σ X (PK a K MK L) (.dec n sh e k) (SPB a K MK L0 Lb0) := by
  refine hoareG_dec fun s hs ⟨hL, hK⟩ v hv hsh => ?_
  refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv hsh, hk_congr hH (s := s) rfl rfl rfl rfl hK⟩
  · refine ⟨fun hr => ?_, fun hr => ?_, fun r' hr' => ?_⟩
    · obtain ⟨h1, h2⟩ := hq.1 hr
      exact ⟨hres _ _ h1, hk_congr hH (s := t) rfl rfl rfl rfl h2⟩
    · obtain ⟨h1, h2⟩ := hq.2.1 hr
      exact ⟨hresb _ _ h1, hk_congr hH (s := t) rfl rfl rfl rfl h2⟩
    · obtain ⟨h1, h2⟩ := hq.2.2 r' hr'
      exact ⟨h1, fun hb hna => hha_congr (s := t) hH rfl rfl rfl rfl (h2 hb hna)⟩

/-- **`var rn = f(args); k`** with a hand-precondition callee, a value spec, and `SPB` posts. -/
theorem hoareG_decCallB {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {Fct : ValueHOL 64 → Prop} {L1 L0 Lb1 Lb0 : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (hret : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → Fct v)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, Fct v → HoareG σ X (PK a K MK (L' v)) k (SPB a K MK L1 Lb1))
    (hres : ∀ m old, L1 m → L0 (m.resVarEq (rn, old)))
    (hresb : ∀ m old, Lb1 m → Lb0 (m.resVarEq (rn, old))) :
    HoareG σ X (PK a K MK L) (.decCall rn sh f args k) (SPB a K MK L0 Lb0) := by
  refine hoareG_decCall (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    have hFv := hret s hL vs hvs callee v st hR' hsh
    refine hoareG_conseq (hk v hFv) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL' s st v hL, Γ', q', ext_trans he he',
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', Nat.le_trans hK hmo.1,
        winK_after ha hh' hmo hnf hw⟩
    · refine ⟨fun hr => ?_, fun hr => ?_, fun r' hr' => ?_⟩
      · obtain ⟨h1, h2⟩ := hq.1 hr
        exact ⟨hres _ _ h1, hk_congr ha.hH (s := t) rfl rfl rfl rfl h2⟩
      · obtain ⟨h1, h2⟩ := hq.2.1 hr
        exact ⟨hresb _ _ h1, hk_congr ha.hH (s := t) rfl rfl rfl rfl h2⟩
      · obtain ⟨h1, h2⟩ := hq.2.2 r' hr'
        exact ⟨h1, fun hb hna => hha_congr (s := t) ha.hH rfl rfl rfl rfl (h2 hb hna)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨(fun h => absurd h (by simp)), fun h => absurd (Option.some.inj h) (abn_nb habn).1, fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(abn_nb habn).2, fun _ hna => ?_⟩
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st)
      rfl rfl rfl rfl hh'⟩

/-- A new value of a local that currently holds a word is a word. -/
theorem valid_word {s : State σ} {x : MlS} {w : BitVec 64} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word w)))
    (h : isValidValueHOLExact s.toExact .local x v = true) : ∃ w', v = .val (.word w') := by
  have h1 := valid_local h hx
  exact val_of_shapeEq_one' (by simpa [shapeOfHOLExact] using h1)

/-- **`x = f(args);`** (assignment of a call result) for a hand-precondition callee with a
value spec. -/
theorem hoareG_callAK {a : Act σ} (ha : ActOK a X) {f x : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L L' : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ y, ArgCells sg'.params vs y → a.Foot y) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (h : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      isValidValueHOLExact s.toExact .local x v = true → L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (PK a K MK L) (callTo x f args) (SPK a K MK L') := by
  unfold callTo
  refine hoareG_callA (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hval
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    have hh2 := heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local x v { st with locals := s.locals }) rfl rfl rfl rfl hh'
    exact ⟨fun _ => ⟨h s hL vs hvs callee v st hR' hval, Γ', q', ext_trans he he', hh2,
      Nat.le_trans hK hmo.1, winK_after ha hh' hmo hnf hw⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨(fun h => absurd h (by simp)), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(abn_nb habn).1, (abn_nb habn).2, fun hna => ?_⟩
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st)
      rfl rfl rfl rfl hh'⟩

/-- **A loop whose body may `break`.** -/
theorem hoareG_whileB {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L Lx Lb : LocalsH → Prop} {c : ExpHOL 64} {body : ProgHOL 64}
    (hb : HoareG σ X (fun s => PK a K MK L s ∧ CondTrue s c) body (SPB a K MK L Lb))
    (hexit : ∀ s : State σ, PK a K MK L s → ev s c = some (.val (.word 0)) →
      Lx s.locals ∧ HK a K MK s)
    (hbk : ∀ m, Lb m → Lx m) :
    HoareG σ X (PK a K MK L) (.while c body) (SPK a K MK Lx) := by
  refine hoareG_while (I := PK a K MK L) (fun t h => ⟨h.1, hk_congr hH (s := t) rfl rfl rfl rfl h.2⟩)
    ?_ (fun s _ hi hc => ⟨fun _ => hexit s hi hc, fun r' h => absurd h (by simp)⟩)
  refine hoareG_conseq hb (fun s _ h => h) ?_
  intro r t _ _ h
  refine ⟨fun hr => h.1 hr, fun hc => ?_, fun hbk' => ?_, fun r' hr' h1 h2 => ?_⟩
  · exact absurd rfl (h.2.2 _ hc).1
  · obtain ⟨h1, h2⟩ := h.2.1 hbk'
    exact ⟨fun _ => ⟨hbk _ h1, h2⟩, fun r' h => absurd h (by simp)⟩
  · subst hr'
    obtain ⟨h3, h4⟩ := h.2.2 r' rfl
    exact ⟨(fun h => absurd h (by simp)), fun r'' h => by cases h; exact ⟨h2, h3, h4 h2⟩⟩

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.hoareG_decB
#print axioms InitECandidate.Solver.MemSafe.Fq.hoareG_decCallB
#print axioms InitECandidate.Solver.MemSafe.Fq.hoareG_callAK
#print axioms InitECandidate.Solver.MemSafe.Fq.hoareG_whileB
