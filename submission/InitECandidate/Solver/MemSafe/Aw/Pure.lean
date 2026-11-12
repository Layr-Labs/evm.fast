import InitECandidate.Solver.MemSafe.Aw.Zk

set_option autoImplicit false

/-!
# Pure functions: no store, calls only to pure functions

`PureB S p`: `p` has no store, global write, exception handler or FFI call, and calls only functions
of `S`. Then it changes no memory and no global (`hoareG_pure`), whatever it computes.
`footRet_of_pure` turns this into `FootRet σ X f (fun _ => True) NoFoot (fun _ _ => True)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def PureB (S : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .dec _ _ _ b => PureB S b
  | .assign .local _ _ => true
  | .seq a b => PureB S a && PureB S b
  | .ite _ a b => PureB S a && PureB S b
  | .while _ b => PureB S b
  | .return _ => true
  | .decCall _ _ f _ k => S.contains f && PureB S k
  | .call none f _ => S.contains f
  | .call (some (none, none)) f _ => S.contains f
  | .call (some (some (.local, _), none)) f _ => S.contains f
  | _ => false

/-- The pure callees' specs. -/
def PureSpecs (σ : Type) (X : Ctx 64) (S : List MlS) : Prop :=
  ∀ f ∈ S, ∃ RetF : List (ValueHOL 64) → ValueHOL 64 → Prop,
    FootRet σ X f (fun _ => True) (fun _ _ => False) RetF

theorem hoareG_pure {S : List MlS} (hS : PureSpecs σ X S) {s0 : State σ} :
    ∀ (p : ProgHOL 64), PureB S p = true →
      HoareG σ X (LPre (fun _ => False) s0 (fun _ => True)) p
        (LZ (fun _ => False) s0 (fun _ => True) (fun _ => True))
  | .skip, _ => hoareG_skipZ (fun _ _ => trivial)
  | .dec x sh e b, h => by
      refine hoareG_decZ (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
      intro s hs hL v hv hsh
      exact hoareG_preZ (hoareG_pure hS b h) (fun _ _ => trivial)
  | .assign .local n e, _ => hoareG_assignZ (fun _ _ _ _ _ => trivial)
  | .assign .global n e, h => by simp [PureB] at h
  | .seq a b, h => by
      simp only [PureB, Bool.and_eq_true] at h
      exact hoareG_seqZ (hoareG_pure hS a h.1) (hoareG_pure hS b h.2)
  | .ite c a b, h => by
      simp only [PureB, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pure hS a h.1) (fun s _ hh => hh.1))
        (hoareG_pre (hoareG_pure hS b h.2) (fun s _ hh => hh.1))
  | .while c b, h => by
      simp only [PureB] at h
      exact hoareG_whileZ (hoareG_pre (hoareG_pure hS b h) (fun s _ hh => hh.1))
        (fun _ _ _ _ => trivial)
  | .return e, _ => hoareG_returnZ (fun _ _ _ _ _ => trivial)
  | .decCall x sh f args k, h => by
      simp only [PureB, Bool.and_eq_true, List.contains_iff_mem] at h
      obtain ⟨RetF, hf⟩ := hS f h.1
      refine hoareG_decCallFootZ (L' := fun _ _ => True) hf
        (fun _ _ _ _ _ => ⟨trivial, fun a ha => ha.elim⟩) ?_ (fun _ _ _ _ => trivial)
      intro s vs v hs hL hvs hret hsh
      exact hoareG_preZ (hoareG_pure hS k h.2) (fun _ _ => trivial)
  | .call none f args, h => by
      simp only [PureB, List.contains_iff_mem] at h
      obtain ⟨RetF, hf⟩ := hS f h
      exact hoareG_tailFootZ hf (fun _ _ _ _ _ => ⟨trivial, fun a ha => ha.elim, fun _ _ => trivial⟩)
  | .call (some (none, none)) f args, h => by
      simp only [PureB, List.contains_iff_mem] at h
      obtain ⟨RetF, hf⟩ := hS f h
      exact hoareG_callFootRZ hf (fun _ _ _ _ _ => ⟨trivial, fun a ha => ha.elim⟩)
        (fun _ _ _ _ _ _ => trivial)
  | .call (some (some (.local, x), none)) f args, h => by
      simp only [PureB, List.contains_iff_mem] at h
      obtain ⟨RetF, hf⟩ := hS f h
      exact hoareG_callAFootZ hf (fun _ _ _ _ _ => ⟨trivial, fun a ha => ha.elim⟩)
        (fun _ _ _ _ _ _ _ => trivial)
  | .primitive .., h => by simp [PureB] at h
  | .store .., h => by simp [PureB] at h
  | .store32 .., h => by simp [PureB] at h
  | .storeByte .., h => by simp [PureB] at h
  | .break, h => by simp [PureB] at h
  | .continue, h => by simp [PureB] at h
  | .call (some (some (.global, _), _)) _ _, h => by simp [PureB] at h
  | .call (some (some (.local, _), some _)) _ _, h => by simp [PureB] at h
  | .call (some (none, some _)) _ _, h => by simp [PureB] at h
  | .extCall .., h => by simp [PureB] at h
  | .raise .., h => by simp [PureB] at h
  | .shMemLoad .., h => by simp [PureB] at h
  | .shMemStore .., h => by simp [PureB] at h
  | .tick, h => by simp [PureB] at h
  | .annot .., h => by simp [PureB] at h

/-- A pure function. -/
theorem footRet_of_pure {S : List MlS} (hS : PureSpecs σ X S) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, body, rsh)) (hpure : PureB S body = true) :
    FootRet σ X f (fun _ => True) (fun _ _ => False) (fun _ _ => True) := by
  refine footRet_of_hoareG fun vs body' callee rs hl s0 _ hloc _ => ?_
  obtain ⟨ps', hps'⟩ := lookupCode_some' hl
  have hbody : body' = body := by
    have := hps'
    rw [hcode] at this
    simp only [Option.some.injEq, Prod.mk.injEq] at this
    exact this.2.1.symm
  subst hbody
  refine hoareG_conseq (hoareG_pure hS body' hpure) (fun t _ ht => by subst ht; exact lpre_init trivial)
    fun _ _ _ _ h => ⟨h.1.1, fun v hv => trivial⟩

/-- A pure function of the guest, from its declaration. -/
theorem footRet_pure_fn {S : List MlS} (hS : PureSpecs σ X S) (hC : X.code.lookup = guestCode)
    {d : Flapjack.Decl (BitVec 64)} (hd : d ∈ Guest.Software.guestAst)
    (hf : ∃ fd, d = .function fd) {name : MlS} (hname : (fnEntry d).1 = name)
    (hpure : PureB S (fnEntry d).2.2.1 = true) :
    FootRet σ X name (fun _ => True) (fun _ _ => False) (fun _ _ => True) := by
  have hcode : guestCode name = some (fnEntry d).2 := by
    rw [← hname]
    exact code_of_entry hd hf (Prod.mk.eta (p := fnEntry d))
  refine footRet_of_pure hS (ps := (fnEntry d).2.1) (rsh := (fnEntry d).2.2.2) (by rw [hC]; exact hcode) hpure

/-- The body of a called function, whatever the number of parameters. -/
theorem lookupCode_body' {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    (hcode : code f = some (ps, bd, rsh)) {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd := by
  obtain ⟨ps', hps'⟩ := lookupCode_some' hl
  rw [hcode] at hps'
  simp only [Option.some.injEq, Prod.mk.injEq] at hps'
  exact hps'.2.1.symm

end InitECandidate.Solver.MemSafe.Aw
