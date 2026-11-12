import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.HoareX

/-!
# Protected-cell capabilities (M1)

A capability `⟨g, t, ks⟩`: the protected global `g` points at a `Γ` object of type `t`
(`CapObj`), and the `prot` slots `ks` of that object may be written. A function with
capabilities `cs` has the summary `CSumm`: the frozen `SumSpec` with `Pre := ReqOK cs` (every
capability global points at its object) and `PW := CapPW cs` (the capability slots).
`CSumm` with no capabilities is the plain `Summ` (`csumm_of_summ`).

Inside such a function the checker reads every capability global as a non-null pointer: the
body is checked under `upg C cs`, the configuration with those globals retyped `ptr t`
(`G_upg`, `G_of_upg`).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- A capability. `all` (rev. 6, type capabilities only in practice): every `prot` cell of
every `Γ` object of type `t` or of an owner-encoded type (`≥ ownBase`) may be written. -/
structure Cap where
  g : MlS
  t : Nat
  ks : List Nat
  all : Bool
  deriving DecidableEq, Repr

variable {σ : Type}

/-- The pseudo-global of a **type capability** (rev. 5): `⟨anyG, t, ks⟩` lets a function
write the `prot` slots `ks` of every `Γ` object of type `t` (table regions, list arrays). It
needs no capability object. -/
def anyG : MlS := nm "*"

/-- `e` is an object of capability `c`: the object the capability global points at, or (type
capability) any object of the type. -/
def CapObj (c : Cap) (s : State σ) (Γ : Gam) (e : Obj) : Prop :=
  e ∈ Γ ∧ e.ty = c.t ∧ (c.g = anyG ∨ gword s c.g = some e.base)

/-- Every global capability has its object (type capabilities need none). -/
def ReqOK (cs : List Cap) (s : State σ) (Γ : Gam) : Prop :=
  ∀ c ∈ cs, c.g ≠ anyG → ∃ e, e ∈ Γ ∧ e.ty = c.t ∧ gword s c.g = some e.base

/-- The objects of an all-cells capability: type `c.t` or owner-encoded (rev. 6). -/
def AllTy (c : Cap) (t : Nat) : Prop := t = c.t ∨ ownBase ≤ t

/-- The cells capabilities `cs` may write: the slots `ks` of the capability objects, and (rev. 6)
for an all-cells capability every slot of every `Γ` object of its type range. (`SumSpec`
intersects this with `ProtCell`.) -/
def CapPW (cs : List Cap) (s : State σ) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ c ∈ cs, (∃ e, CapObj c s Γ e ∧ ∃ k ∈ c.ks, a = e.cell k) ∨
    (c.all = true ∧ ∃ e ∈ Γ, AllTy c e.ty ∧ ∃ k, e.HasSlot k ∧ a = e.cell k)

/-- A summary table with capabilities. -/
abbrev CTab := List (MlS × Sig × List Cap)

/-- The summary of a function with capabilities `cs`. -/
def CSumm (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig) (cs : List Cap) :
    Prop :=
  SumSpecA σ X C H f sg (fun _ s Γ => ReqOK cs s Γ) (fun _ s Γ a => CapPW cs s Γ a)
    (fun _ _ _ _ _ _ => True)

def CTabSound (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tab : CTab) : Prop :=
  ∀ f sg cs, (f, sg, cs) ∈ tab → CSumm σ X C H f sg cs

/-- A plain table as a capability table. -/
def ofTab (tab : SumTab) : CTab := tab.map fun q => (q.1, q.2, [])

/-! ## Monotonicity of `SumSpec` -/

theorem sumSpec_mono {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre Pre' : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q Q' : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X C H f sg Pre PW Q) (hPre : ∀ vs s Γ, Pre' vs s Γ → Pre vs s Γ)
    (hPW : ∀ vs s Γ a, PW vs s Γ a → PW' vs s Γ a)
    (hQ : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → Q' vs s Γ r t Γ') :
    SumSpec σ X C H f sg Pre' PW' Q' := by
  intro vs body callee rs hl s hs hloc r hr hg Γ hG hargs hpre
  obtain ⟨Γ', p, p', core, hq⟩ := h vs body callee rs hl s hs hloc r hr hg Γ hG hargs
    (hPre vs s Γ hpre)
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := core
  refine ⟨Γ', p, p', ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩,
    hQ _ _ _ _ _ _ hq⟩
  rcases ha with h | h | h | ⟨hp, hw⟩
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr ⟨hp, hPW _ _ _ _ hw⟩))

theorem sumSpecA_mono {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre Pre' : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q Q' : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) (hPre : ∀ vs s Γ, Pre' vs s Γ → Pre vs s Γ)
    (hPW : ∀ vs s Γ a, PW vs s Γ a → PW' vs s Γ a)
    (hQ : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → Q' vs s Γ r t Γ') :
    SumSpecA σ X C H f sg Pre' PW' Q' := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨Γ', p, p', core, hq⟩ := h vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (hPre vs s Γ hpre)
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := core
  refine ⟨Γ', p, p', ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩,
    hQ _ _ _ _ _ _ hq⟩
  rcases ha with h | h | h | ⟨hp, hw⟩
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr ⟨hp, hPW _ _ _ _ hw⟩))

/-- A rev. 4 capability-style summary as a `CSumm`. -/
theorem csumm_of_sumSpec {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (h : SumSpec σ X C H f sg (fun _ s Γ => ReqOK cs s Γ) (fun _ s Γ a => CapPW cs s Γ a)
      (fun _ _ _ _ _ _ => True)) : CSumm σ X C H f sg cs :=
  sumSpecA_of_sumSpec h

theorem csumm_of_summA {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    (h : SummA σ X C H f sg) : CSumm σ X C H f sg [] :=
  sumSpecA_mono h (fun _ _ _ _ => trivial) (fun _ _ _ _ h => h.elim) (fun _ _ _ _ _ _ _ => trivial)

theorem csumm_of_summ {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    (h : Summ σ X C H f sg) : CSumm σ X C H f sg [] :=
  csumm_of_summA (summA_of_summ h)

theorem tabSound_cons {X : Ctx 64} {C : Cfg} {H : Hooks σ} {tab : SumTab}
    (ht : TabSound σ X C H tab) {f : MlS} {sg : Sig} (h : Summ σ X C H f sg) :
    TabSound σ X C H ((f, sg) :: tab) := by
  intro g sg' hm
  rcases List.mem_cons.mp hm with he | hm
  · cases he; exact h
  · exact ht g sg' hm

theorem tabSound_append {X : Ctx 64} {C : Cfg} {H : Hooks σ} {t t' : SumTab}
    (h : TabSound σ X C H t) (h' : TabSound σ X C H t') : TabSound σ X C H (t ++ t') := by
  intro g sg hm
  rcases List.mem_append.mp hm with hm | hm
  · exact h g sg hm
  · exact h' g sg hm

theorem ctabSound_ofTab {X : Ctx 64} {C : Cfg} {H : Hooks σ} {tab : SumTab}
    (h : TabSound σ X C H tab) : CTabSound σ X C H (ofTab tab) := by
  intro f sg cs hm
  obtain ⟨q, hq, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_of_summ (h q.1 q.2 hq)

theorem ctabSound_append {X : Ctx 64} {C : Cfg} {H : Hooks σ} {t t' : CTab}
    (h : CTabSound σ X C H t) (h' : CTabSound σ X C H t') : CTabSound σ X C H (t ++ t') := by
  intro f sg cs hm
  rcases List.mem_append.mp hm with hm | hm
  · exact h f sg cs hm
  · exact h' f sg cs hm

theorem ctabSound_cons {X : Ctx 64} {C : Cfg} {H : Hooks σ} {tab : CTab}
    (ht : CTabSound σ X C H tab) {f : MlS} {sg : Sig} {cs : List Cap}
    (h : CSumm σ X C H f sg cs) : CTabSound σ X C H ((f, sg, cs) :: tab) := by
  intro g sg' cs' hm
  rcases List.mem_cons.mp hm with he | hm
  · cases he; exact h
  · exact ht g sg' cs' hm

theorem ctabSound_nil {X : Ctx 64} {C : Cfg} {H : Hooks σ} : CTabSound σ X C H [] :=
  fun _ _ _ h => by cases h

/-! ## The upgraded configuration -/

/-- The global capabilities. -/
def capsG (cs : List Cap) : List Cap := cs.filter fun c => c.g != anyG

theorem mem_capsG {cs : List Cap} {c : Cap} : c ∈ capsG cs ↔ c ∈ cs ∧ c.g ≠ anyG := by
  unfold capsG
  simp [List.mem_filter]

/-- The capability globals retyped as non-null pointers. -/
def upg (C : Cfg) (cs : List Cap) : Cfg :=
  { C with GT := (capsG cs).map (fun c => (c.g, FK.ptr c.t)) ++ C.GT }

/-- The static side conditions of a capability list: slots within the minimal size, and for a
global capability: protected, not written, and declared as a nullable or non-null pointer of
the right type. -/
def capsOK (C : Cfg) (sg : Sig) (cs : List Cap) : Bool :=
  cs.all fun c => c.ks.all (fun k => Nat.ble (8 * k + 8) (C.ty c.t).minSz) &&
    (c.g == anyG || (C.PG.contains c.g && !sg.gw.contains c.g &&
      (C.GT.lookup c.g == some (.nptr c.t) || C.GT.lookup c.g == some (.ptr c.t))))

/-- `c` is included in `cs'` (same global and type, fewer slots, all-cells only if `c'` is). -/
def capSub (cs cs' : List Cap) : Bool :=
  cs.all fun c => cs'.any fun c' => c'.g == c.g && c'.t == c.t && (!c.all || c'.all) &&
    c.ks.all c'.ks.contains

theorem capsOK_ks {C : Cfg} {sg : Sig} {cs : List Cap} (h : capsOK C sg cs = true) {c : Cap}
    (hc : c ∈ cs) : ∀ k ∈ c.ks, 8 * k + 8 ≤ (C.ty c.t).minSz := by
  unfold capsOK at h
  have := List.all_eq_true.mp h c hc
  simp only [Bool.and_eq_true, Bool.or_eq_true, List.all_eq_true] at this
  exact fun k hk => Nat.le_of_ble_eq_true (this.1 k hk)

theorem capsOK_spec {C : Cfg} {sg : Sig} {cs : List Cap} (h : capsOK C sg cs = true) {c : Cap}
    (hc : c ∈ cs) (hg : c.g ≠ anyG) :
    c.g ∈ C.PG ∧ c.g ∉ sg.gw ∧ (∀ k ∈ c.ks, 8 * k + 8 ≤ (C.ty c.t).minSz) ∧
      (C.GT.lookup c.g = some (.nptr c.t) ∨ C.GT.lookup c.g = some (.ptr c.t)) := by
  have hks := capsOK_ks h hc
  unfold capsOK at h
  have := List.all_eq_true.mp h c hc
  simp only [Bool.and_eq_true, Bool.not_eq_true', Bool.or_eq_true, beq_iff_eq,
    List.all_eq_true] at this
  rcases this.2 with h0 | ⟨⟨h1, h2⟩, h4⟩
  · exact absurd h0 hg
  · exact ⟨by simpa using h1, by simpa using h2, hks, h4⟩

theorem capSub_spec {cs cs' : List Cap} (h : capSub cs cs' = true) {c : Cap} (hc : c ∈ cs) :
    ∃ c' ∈ cs', c'.g = c.g ∧ c'.t = c.t ∧ (∀ k ∈ c.ks, k ∈ c'.ks) ∧
      (c.all = true → c'.all = true) := by
  unfold capSub at h
  have := List.all_eq_true.mp h c hc
  obtain ⟨c', hc', hm⟩ := List.any_eq_true.mp this
  simp only [Bool.and_eq_true, beq_iff_eq, List.all_eq_true, Bool.or_eq_true,
    Bool.not_eq_true'] at hm
  obtain ⟨⟨⟨h1, h2⟩, h4⟩, h3⟩ := hm
  refine ⟨c', hc', h1, h2, fun k hk => by simpa using h3 k hk, fun ha => ?_⟩
  rcases h4 with h4 | h4
  · rw [ha] at h4; cases h4
  · exact h4

theorem upg_lookup0 {C : Cfg} {cs : List Cap} {g : MlS} {k : FK}
    (h : ({ C with GT := cs.map (fun c => (c.g, FK.ptr c.t)) ++ C.GT } : Cfg).GT.lookup g = some k) :
    (∃ c ∈ cs, c.g = g ∧ k = .ptr c.t) ∨ C.GT.lookup g = some k := by
  simp only at h
  induction cs with
  | nil => exact Or.inr h
  | cons c cs ih =>
      simp only [List.map_cons, List.cons_append, List.lookup_cons] at h
      split at h
      · rename_i hg
        simp only [Option.some.injEq] at h
        exact Or.inl ⟨c, List.mem_cons_self, (by simpa using hg : g = c.g).symm, h.symm⟩
      · rcases ih h with ⟨c', hc', h1, h2⟩ | h
        · exact Or.inl ⟨c', List.mem_cons_of_mem _ hc', h1, h2⟩
        · exact Or.inr h

theorem upg_lookup {C : Cfg} {cs : List Cap} {g : MlS} {k : FK}
    (h : (upg C cs).GT.lookup g = some k) :
    (∃ c ∈ cs, c.g ≠ anyG ∧ c.g = g ∧ k = .ptr c.t) ∨ C.GT.lookup g = some k := by
  rcases upg_lookup0 (cs := capsG cs) h with ⟨c, hc, h1, h2⟩ | h
  · obtain ⟨hc, hg⟩ := mem_capsG.mp hc
    exact Or.inl ⟨c, hc, hg, h1, h2⟩
  · exact Or.inr h

theorem lookup_upg_of0 {C : Cfg} {cs : List Cap} {g : MlS} (h : ∀ c ∈ cs, c.g ≠ g) :
    (cs.map (fun c => (c.g, FK.ptr c.t)) ++ C.GT).lookup g = C.GT.lookup g := by
  induction cs with
  | nil => rfl
  | cons c cs ih =>
      simp only [List.map_cons, List.cons_append, List.lookup_cons]
      have hne : (g == c.g) = false := by
        simp only [beq_eq_false_iff_ne]; exact fun he => h c List.mem_cons_self he.symm
      rw [hne]
      exact ih (fun c' hc' => h c' (List.mem_cons_of_mem _ hc'))

theorem lookup_upg_of {C : Cfg} {cs : List Cap} {g : MlS} (h : ∀ c ∈ cs, c.g ≠ anyG → c.g ≠ g) :
    (upg C cs).GT.lookup g = C.GT.lookup g :=
  lookup_upg_of0 (cs := capsG cs) (fun c hc => h c (mem_capsG.mp hc).1 (mem_capsG.mp hc).2)

/-- `G` under the upgraded configuration from `G` and the capability objects. -/
theorem G_upg {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} {cs : List Cap} (hG : G C H Γ s)
    (hr : ReqOK cs s Γ) : G (upg C cs) H Γ s := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p, hp, hord, hL, hF, hT, fun g k hk => ?_, hW⟩
  rcases upg_lookup hk with ⟨c, hc, hga, rfl, rfl⟩ | hk'
  · obtain ⟨e, he, het, heb⟩ := hr c hc hga
    exact ⟨e.base, heb, e, he, rfl, het⟩
  · exact hGl g k hk'

theorem lookup_append_some {α β : Type} [BEq α] {l m : List (α × β)} {g : α} {k : β}
    (h : m.lookup g = some k) : ∃ k', (l ++ m).lookup g = some k' := by
  induction l with
  | nil => exact ⟨k, h⟩
  | cons q l ih =>
      obtain ⟨a, b⟩ := q
      simp only [List.cons_append, List.lookup]
      split
      · exact ⟨_, rfl⟩
      · exact ih

/-- `G` under the base configuration from the upgraded one (the capability globals are
nullable or non-null pointers of their types). -/
theorem G_of_upg {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} {sg : Sig} {cs : List Cap}
    (hok : capsOK C sg cs = true) (hG : G (upg C cs) H Γ s) : G C H Γ s := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p, hp, hord, hL, hF, hT, fun g k hk => ?_, hW⟩
  obtain ⟨k', hu⟩ : ∃ k', (upg C cs).GT.lookup g = some k' := by
    unfold upg; exact lookup_append_some hk
  obtain ⟨v, hv, hf⟩ := hGl g k' hu
  rcases upg_lookup hu with ⟨c, hc, hga, rfl, rfl⟩ | hk'
  · obtain ⟨-, -, -, h4⟩ := capsOK_spec hok hc hga
    refine ⟨v, hv, ?_⟩
    obtain ⟨o, ho, hb, ht⟩ := hf
    rcases h4 with h4 | h4 <;> rw [h4] at hk <;> cases hk
    · exact Or.inr ⟨o, ho, hb, ht⟩
    · exact ⟨o, ho, hb, ht⟩
  · rw [hk'] at hk; cases hk; exact ⟨v, hv, hf⟩

/-- A summary proved under the upgraded configuration holds under the base one, given the
capability objects. -/
theorem sumSpec_of_upg {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (hok : capsOK C sg cs = true) {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X (upg C cs) H f sg Pre PW Q) :
    SumSpec σ X C H f sg (fun vs s Γ => Pre vs s Γ ∧ ReqOK cs s Γ) PW Q := by
  intro vs body callee rs hl s hs hloc r hr hg Γ hG hargs ⟨hpre, hreq⟩
  obtain ⟨Γ', p, p', core, hq⟩ :=
    h vs body callee rs hl s hs hloc r hr hg Γ (G_upg hG hreq) hargs hpre
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := core
  exact ⟨Γ', p, p', ⟨h1, h2, h3, h4, h5, G_of_upg hok h6, hmod, h8, h9, h10⟩, hq⟩

theorem sumSpecA_of_upg {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (hok : capsOK C sg cs = true) {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X (upg C cs) H f sg Pre PW Q) :
    SumSpecA σ X C H f sg (fun vs s Γ => Pre vs s Γ ∧ ReqOK cs s Γ) PW Q := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs ⟨hpre, hreq⟩
  obtain ⟨Γ', p, p', core, hq⟩ :=
    h vs body callee rs hl s hs hloc r hr hg hna Γ (G_upg hG hreq) hargs hpre
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := core
  exact ⟨Γ', p, p', ⟨h1, h2, h3, h4, h5, G_of_upg hok h6, hmod, h8, h9, h10⟩, hq⟩

end InitECandidate.Solver.MemSafe
