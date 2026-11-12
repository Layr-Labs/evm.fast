import InitECandidate.Solver.MemSafe.Helpers.Bytes

set_option autoImplicit false

/-!
# Pure function bodies

`pureF p`: `p` is built from `skip`, local assignments, `var` declarations, sequences,
conditionals, loops and `return` (no store, call, global assignment, `break` or `continue`).
`hoareG_pureF`: such code keeps the globals and the memory (any footprint `BWPost Rf s0` is
kept), and never ends with `break` or `continue`. `foot_pureF`: a function whose body passes
has the empty footprint; `foot_pureF_decl` takes the body straight from the guest AST (checked
by `decide_cbv`, no rendering needed).
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def pureF : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local _ _ => true
  | .dec _ _ _ b => pureF b
  | .seq a b => pureF a && pureF b
  | .ite _ a b => pureF a && pureF b
  | .while _ b => pureF b
  | .return _ => true
  | _ => false

/-- Neither `continue` nor `break`. -/
def NoCB (r : Option (PanSemResultExact 64)) : Prop := r ≠ some .continue ∧ r ≠ some .break

/-- Normal completion or a return. -/
def PlainR (r : Option (PanSemResultExact 64)) : Prop := r = none ∨ ∃ v, r = some (.returned v)

theorem PlainR.noCB {r : Option (PanSemResultExact 64)} (h : PlainR r) : NoCB r := by
  rcases h with rfl | ⟨v, rfl⟩ <;> simp [NoCB]

theorem hoareG_pureF {Rf : BitVec 64 → Prop} {s0 : State σ} :
    ∀ p : ProgHOL 64, pureF p = true →
      HoareG σ X (fun t => BWPost Rf s0 t) p (fun r t => BWPost Rf s0 t ∧ PlainR r)
  | .skip, _ => hoareG_skip fun _ _ h => ⟨h, Or.inl rfl⟩
  | .assign .local x e, _ => hoareG_assign fun _ _ h _ _ _ => ⟨h, Or.inl rfl⟩
  | .assign .global _ _, h => by simp [pureF] at h
  | .dec x sh e b, h => by
      simp only [pureF] at h
      refine hoareG_dec fun s _ hp v _ _ => ?_
      refine hoareG_conseq (hoareG_pureF b h) (fun t _ ht => ?_) fun _ _ _ _ hq => hq
      subst ht
      exact hp
  | .seq a b, h => by
      simp only [pureF, Bool.and_eq_true] at h
      exact hoareG_seq (hoareG_pureF a h.1) (fun _ _ _ _ _ hq => hq)
        (hoareG_pre (hoareG_pureF b h.2) fun _ _ hq => hq.1)
  | .ite c a b, h => by
      simp only [pureF, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pureF a h.1) fun _ _ hq => hq.1)
        (hoareG_pre (hoareG_pureF b h.2) fun _ _ hq => hq.1)
  | .while c b, h => by
      simp only [pureF] at h
      refine hoareG_while (fun _ h => h) ?_ (fun _ _ hi _ => ⟨hi, Or.inl rfl⟩)
      refine hoareG_conseq (hoareG_pureF b h) (fun _ _ hq => hq.1) ?_
      intro r t _ _ ⟨hbw, hpl⟩
      have hcb := hpl.noCB
      exact ⟨fun _ => hbw, fun hr => absurd hr hcb.1, fun hr => absurd hr hcb.2,
        fun r' hr h1 h2 => ⟨hbw, hpl⟩⟩
  | .return e, _ => hoareG_return fun _ _ h v _ => ⟨h, Or.inr ⟨v, rfl⟩⟩
  | .primitive _ _ _, h => by simp [pureF] at h
  | .store _ _, h => by simp [pureF] at h
  | .store32 _ _, h => by simp [pureF] at h
  | .storeByte _ _, h => by simp [pureF] at h
  | .break, h => by simp [pureF] at h
  | .continue, h => by simp [pureF] at h
  | .call _ _ _, h => by simp [pureF] at h
  | .decCall _ _ _ _ _, h => by simp [pureF] at h
  | .extCall _ _ _ _ _, h => by simp [pureF] at h
  | .raise _ _, h => by simp [pureF] at h
  | .shMemLoad _ _ _ _, h => by simp [pureF] at h
  | .shMemStore _ _ _, h => by simp [pureF] at h
  | .tick, h => by simp [pureF] at h
  | .annot _ _, h => by simp [pureF] at h

/-- A pure function: every good result keeps the globals and the memory and is not abnormal. -/
def PureSpec (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ s r t => Good (some r) →
    t.globals = s.globals ∧ t.memory = s.memory ∧ ¬ Abn r)

theorem pureSpec_of {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hp : pureF bd = true) :
    PureSpec σ X f := by
  intro vs body callee rs hl s hs _ r hr hg
  obtain ⟨ps', hc⟩ := lookupCode_some' hl
  rw [hcode] at hc
  obtain ⟨-, rfl, -⟩ := Prod.mk.inj (Option.some.inj hc)
  have := hoareG_pureF (Rf := fun _ => False) (s0 := s) bd hp s hs ⟨rfl, fun _ _ => rfl⟩
    (by rw [hr]; exact hg)
  rw [hr] at this
  obtain ⟨⟨hgl, hm⟩, hpl⟩ := this
  refine ⟨hgl, funext fun a => hm a id, fun habn => ?_⟩
  rcases hpl with h | ⟨v, h⟩
  · cases h
  · cases h
    rcases habn with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h

theorem PureSpec.foot {f : MlS} (h : PureSpec σ X f) : FootSpec σ X f (fun _ => True) NoFoot :=
  h.mono fun _ _ _ _ h hg _ => ⟨(h hg).1, fun a _ => congrFun (h hg).2.1 a⟩

theorem pureSpec_decl (hC : X.code.lookup = guestCode) {d : Flapjack.Decl (BitVec 64)}
    (hd : d ∈ Guest.Software.guestAst) (hf : ∃ fd, d = .function fd)
    (hp : pureF (fnEntry d).2.2.1 = true) : PureSpec σ X (fnEntry d).1 :=
  pureSpec_of (by rw [hC]; exact entry_valid hd hf) hp

/-- A function with a pure body writes no memory and no global. -/
theorem foot_pureF {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hp : pureF bd = true) :
    FootSpec σ X f (fun _ => True) NoFoot :=
  (pureSpec_of hcode hp).foot

/-- The same for a guest declaration, read from the AST. -/
theorem foot_pureF_decl (hC : X.code.lookup = guestCode) {d : Flapjack.Decl (BitVec 64)}
    (hd : d ∈ Guest.Software.guestAst) (hf : ∃ fd, d = .function fd)
    (hp : pureF (fnEntry d).2.2.1 = true) :
    FootSpec σ X (fnEntry d).1 (fun _ => True) NoFoot :=
  (pureSpec_decl hC hd hf hp).foot

end InitECandidate.Solver.MemSafe.Helpers
