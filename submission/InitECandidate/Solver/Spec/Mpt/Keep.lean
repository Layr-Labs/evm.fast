import InitECandidate.Solver.Spec.Mpt.Code

/-!
# A frame rule: programs that keep some locals and globals

`kpB xs gs S p`: `p` is built from `skip`, local and global assignments, word stores,
`ite`, `seq`, `dec`, calls without handler (result discarded or assigned to a local),
`decCall`, `raise` and `return`; it assigns none of the locals `xs` (`dec` included, so no
shadowing), none of the globals `gs`, and when `gs` is nonempty it calls only functions of
`S`.

`hoare_kp`: if every `g ∈ gs` is footprint-closed over `S` (`GwClosed`), such a program
keeps `Keeps xs L gs G` — the locals `xs` hold `L`, the globals `gs` hold `G` — on normal
completion, and its only other tracked result is a `return` (`KP`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The locals `xs` hold `L` and the globals `gs` hold `G`. -/
def Keeps (xs : List MlS) (L : MlS → Option (ValueHOL 64)) (gs : List MlS)
    (G : MlS → Option (ValueHOL 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  (∀ x ∈ xs, t.locals.lookup x = L x) ∧ (∀ g ∈ gs, t.globals.lookup g = G g)

/-- Every tracked result is normal completion in `F`, or a `return`. -/
def KP (F : PanSemStateFiniteExact 64 σ → Prop) (r : Option (PanSemResultExact 64))
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  (r = none ∧ F t) ∨ ∃ v, r = some (.returned v)

theorem KP.none_of {F : PanSemStateFiniteExact 64 σ → Prop} {t : PanSemStateFiniteExact 64 σ}
    (h : KP F none t) : F t := by
  rcases h with ⟨-, h⟩ | ⟨v, hv⟩
  · exact h
  · cases hv

theorem KP.mono {F F' : PanSemStateFiniteExact 64 σ → Prop} {r : Option (PanSemResultExact 64)}
    {t t' : PanSemStateFiniteExact 64 σ} (h : KP F r t) (hF : F t → F' t') : KP F' r t' := by
  rcases h with ⟨hr, h⟩ | ⟨v, hv⟩
  · exact Or.inl ⟨hr, hF h⟩
  · exact Or.inr ⟨v, hv⟩

/-- A call target allowed by the global footprint. -/
def callOk (gs S : List MlS) (f : MlS) : Bool := gs.isEmpty || S.contains f

def kpB (xs gs S : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local y _ => !xs.contains y
  | .assign .global g _ => !gs.contains g
  | .store _ _ => true
  | .ite _ a b => kpB xs gs S a && kpB xs gs S b
  | .seq a b => kpB xs gs S a && kpB xs gs S b
  | .dec y _ _ b => !xs.contains y && kpB xs gs S b
  | .call (some (none, none)) f _ => callOk gs S f
  | .call (some (some (.local, y), none)) f _ => callOk gs S f && !xs.contains y
  | .decCall rn _ f _ k => callOk gs S f && !xs.contains rn && kpB xs gs S k
  | .raise _ _ => true
  | .return _ => true
  | _ => false

theorem funSpec_keepG {gs S : List MlS} (hS : ∀ g ∈ gs, GwClosed g S X.code.lookup) {f : MlS}
    (hf : callOk gs S f = true) :
    FunSpec σ X f (fun _ s _ t => ∀ g ∈ gs, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g hg
  have hfS : S.contains f = true := by
    unfold callOk at hf
    cases hgs : gs with
    | nil => rw [hgs] at hg; cases hg
    | cons _ _ => simpa [hgs] using hf
  exact funSpec_gw (σ := σ) (hS g hg) hfS vs body callee rs hl s hs hloc r hr

section keeps
variable {xs gs : List MlS} {L G : MlS → Option (ValueHOL 64)}

theorem not_mem_of_contains {xs : List MlS} {y : MlS} (h : (!xs.contains y) = true) : y ∉ xs := by
  simpa using h

theorem keeps_setVar {s : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : y ∉ xs)
    (v : ValueHOL 64) (h : Keeps xs L gs G s) : Keeps xs L gs G (setVarHOLFinite y v s) := by
  refine ⟨fun x hx => ?_, fun g hg => h.2 g hg⟩
  rw [lk_set_ne _ _ (by rintro rfl; exact hy hx)]
  exact h.1 x hx

theorem keeps_restore {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : y ∉ xs)
    (old : Option (ValueHOL 64)) (h : Keeps xs L gs G t) :
    Keeps xs L gs G { t with locals := t.locals.resVarEq (y, old) } := by
  refine ⟨fun x hx => ?_, fun g hg => h.2 g hg⟩
  show (t.locals.resVarEq (y, old)).lookup x = L x
  rw [lookup_resVarEq_ne _ _ (by rintro rfl; exact hy hx)]
  exact h.1 x hx

theorem keeps_global {s : PanSemStateFiniteExact 64 σ} {g : MlS} (hg : g ∉ gs)
    (v : ValueHOL 64) (h : Keeps xs L gs G s) :
    Keeps xs L gs G (setKvarHOLFinite .global g v s) := by
  refine ⟨fun x hx => h.1 x hx, fun g' hg' => ?_⟩
  show (s.globals.update (g, v)).lookup g' = G g'
  rw [lookup_update_ne _ _ (by rintro rfl; exact hg hg')]
  exact h.2 g' hg'

/-- After a call: the caller's locals, the callee's final globals. -/
theorem keeps_call {s st : PanSemStateFiniteExact 64 σ}
    (callee : HolFiniteMapExact MlS (ValueHOL 64))
    (hR : ∀ g ∈ gs, st.globals.lookup g =
      (callEntryStateHOLFinite s callee).globals.lookup g)
    (h : Keeps xs L gs G s) : Keeps xs L gs G { st with locals := s.locals } :=
  ⟨fun x hx => h.1 x hx, fun g hg => (hR g hg).trans (h.2 g hg)⟩

end keeps

/-- **Frame rule.** -/
theorem hoare_kp {xs gs S : List MlS} {L G : MlS → Option (ValueHOL 64)}
    (hS : ∀ g ∈ gs, GwClosed g S X.code.lookup) :
    ∀ p : ProgHOL 64, kpB xs gs S p = true →
      Hoare σ X (Keeps xs L gs G) p (KP (Keeps xs L gs G))
  | .skip, _ => hoare_skip fun _ _ h => Or.inl ⟨rfl, h⟩
  | .assign .local y e, hp => by
      have hy := not_mem_of_contains (by simpa [kpB] using hp)
      exact hoare_assign fun s _ h v _ _ => Or.inl ⟨rfl, keeps_setVar hy v h⟩
  | .assign .global g e, hp => by
      have hg := not_mem_of_contains (by simpa [kpB] using hp)
      exact hoare_assignK fun s _ h v _ _ => Or.inl ⟨rfl, keeps_global hg v h⟩
  | .store a e, _ => hoare_store fun _ _ h _ _ _ _ _ _ => Or.inl ⟨rfl, h⟩
  | .ite c a b, hp => by
      simp only [kpB, Bool.and_eq_true] at hp
      exact hoare_ite (hoare_pre (hoare_kp hS a hp.1) fun _ _ h => h.1)
        (hoare_pre (hoare_kp hS b hp.2) fun _ _ h => h.1)
  | .seq a b, hp => by
      simp only [kpB, Bool.and_eq_true] at hp
      exact hoare_seq (hoare_kp hS a hp.1) (fun _ _ _ _ _ h => h)
        (hoare_pre (hoare_kp hS b hp.2) fun _ _ h => h.none_of)
  | .dec y sh e b, hp => by
      simp only [kpB, Bool.and_eq_true] at hp
      have hy := not_mem_of_contains hp.1
      refine hoare_dec fun s _ h v _ _ => ?_
      exact hoare_conseq (hoare_kp hS b hp.2) (fun t _ ht => ht ▸ keeps_setVar hy v h)
        (fun _ _ _ _ hq => hq.mono (keeps_restore hy _))
  | .call (some (none, none)) f args, hp => by
      simp only [kpB] at hp
      exact hoare_callD (funSpec_keepG hS hp) fun s _ h _ _ callee _ _ hR _ =>
        Or.inl ⟨rfl, keeps_call callee hR h⟩
  | .call (some (some (.local, y), none)) f args, hp => by
      simp only [kpB, Bool.and_eq_true] at hp
      have hy := not_mem_of_contains hp.2
      exact hoare_callA (k := .local) (funSpec_keepG hS hp.1) fun s _ h _ _ callee v _ hR _ _ =>
        Or.inl ⟨rfl, keeps_setVar hy v (keeps_call callee hR h)⟩
  | .decCall rn sh f args k, hp => by
      simp only [kpB, Bool.and_eq_true] at hp
      have hy := not_mem_of_contains hp.1.2
      refine hoare_decCallS (funSpec_keepG hS hp.1.1) fun s _ h _ _ callee v _ hR _ _ => ?_
      exact hoare_conseq (hoare_kp hS k hp.2)
        (fun t _ ht => ht ▸ keeps_setVar hy v (keeps_call callee hR h))
        (fun _ _ _ _ hq => hq.mono (keeps_restore hy _))
  | .raise _ _, _ => hoare_raise
  | .return _, _ => hoare_return fun _ _ _ v _ => Or.inr ⟨v, rfl⟩
  | .call none _ _, hp | .call (some (none, some _)) _ _, hp
  | .call (some (some (.local, _), some _)) _ _, hp
  | .call (some (some (.global, _), _)) _ _, hp => by simp [kpB] at hp
  | .primitive _ _ _, hp | .store32 _ _, hp | .storeByte _ _, hp | .while _ _, hp => by
      simp [kpB] at hp
  | .break, hp | .continue, hp | .extCall _ _ _ _ _, hp | .shMemLoad _ _ _ _, hp => by
      simp [kpB] at hp
  | .shMemStore _ _ _, hp | .tick, hp | .annot _ _, hp => by simp [kpB] at hp

end InitECandidate.Solver.Spec.Mpt
