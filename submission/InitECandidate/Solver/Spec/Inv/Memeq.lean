import InitECandidate.Solver.Spec.Inv.HtabFind
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# `memeq(a, a, n)` never answers "different"

`funSpec_memeq_self`: if `memeq` is called with equal first two arguments, every value it
returns is nonzero.

The proof is a syntactic check plus one Hoare induction. `nzB p` accepts a program whose
`return`s are nonzero constants or the guards `if X != Y { return 0; }` where `Y` is `X`
with the local `a` replaced by `b` (`guardPair`: word or byte loads at `a` / `a + rest`), and
which never assigns or redeclares `a` or `b`. `nz_hoare`: from a state where the locals `a`
and `b` hold the same value, a checked program returns only nonzero values (the guards
compare a cell with itself). `memeq_nz` is the kernel check of memeq's body (`decide_cbv`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The checker -/

def simpleEq : ExpHOL 64 → ExpHOL 64 → Bool
  | .const x, .const y => decide (x = y)
  | .var .local x, .var .local y => decide (x = y)
  | _, _ => false

def simpleListEq : List (ExpHOL 64) → List (ExpHOL 64) → Bool
  | [], [] => true
  | x :: xs, y :: ys => simpleEq x y && simpleListEq xs ys
  | _, _ => false

/-- `x` is an address at local `a` and `y` the same address at local `b`. -/
def addrPair : ExpHOL 64 → ExpHOL 64 → Bool
  | .var .local x, .var .local y => decide (x = nm "a") && decide (y = nm "b")
  | .op .add (.var .local x :: r), .op .add (.var .local y :: r') =>
      decide (x = nm "a") && decide (y = nm "b") && simpleListEq r r'
  | _, _ => false

def guardPair : ExpHOL 64 → ExpHOL 64 → Bool
  | .load .one x, .load .one y => addrPair x y
  | .loadByte x, .loadByte y => addrPair x y
  | _, _ => false

def isGuard : ExpHOL 64 → ProgHOL 64 → ProgHOL 64 → Bool
  | .cmp .notEqual x y, .return (.const _), .skip => guardPair x y
  | _, _, _ => false

def notAB (n : MlS) : Bool := decide (n ≠ nm "a") && decide (n ≠ nm "b")

def nzB : ProgHOL 64 → Bool
  | .skip => true
  | .break => true
  | .continue => true
  | .annot _ _ => true
  | .assign .local n _ => notAB n
  | .return (.const c) => decide (c ≠ 0)
  | .seq a b => nzB a && nzB b
  | .ite c a b => isGuard c a b || (nzB a && nzB b)
  | .dec n _ _ b => notAB n && nzB b
  | .while _ b => nzB b
  | _ => false

/-! ## Soundness -/

section sound
variable {σ : Type} {X : Ctx 64}

def EqAB (s : PanSemStateFiniteExact 64 σ) : Prop :=
  s.locals.lookup (nm "a") = s.locals.lookup (nm "b")

theorem simpleEq_eq : ∀ {x y : ExpHOL 64}, simpleEq x y = true → x = y
  | .const x, .const y, h => by simp only [simpleEq, decide_eq_true_eq] at h; rw [h]
  | .var .local x, .var .local y, h => by simp only [simpleEq, decide_eq_true_eq] at h; rw [h]
  | .const _, .var _ _, h | .const _, .rstruct _, h | .const _, .rfield _ _, h
  | .const _, .nstruct _ _, h | .const _, .nfield _ _, h | .const _, .load _ _, h
  | .const _, .load32 _, h | .const _, .loadByte _, h | .const _, .op _ _, h
  | .const _, .panop _ _, h | .const _, .cmp _ _ _, h | .const _, .shift _ _ _, h
  | .const _, .baseAddr, h | .const _, .topAddr, h | .const _, .bytesInWord, h => by
      simp [simpleEq] at h
  | .var .global _, _, h => by simp [simpleEq] at h
  | .var .local _, .const _, h | .var .local _, .var .global _, h | .var .local _, .rstruct _, h
  | .var .local _, .rfield _ _, h | .var .local _, .nstruct _ _, h
  | .var .local _, .nfield _ _, h | .var .local _, .load _ _, h | .var .local _, .load32 _, h
  | .var .local _, .loadByte _, h | .var .local _, .op _ _, h | .var .local _, .panop _ _, h
  | .var .local _, .cmp _ _ _, h | .var .local _, .shift _ _ _, h
  | .var .local _, .baseAddr, h | .var .local _, .topAddr, h
  | .var .local _, .bytesInWord, h => by simp [simpleEq] at h
  | .rstruct _, _, h | .rfield _ _, _, h | .nstruct _ _, _, h | .nfield _ _, _, h
  | .load _ _, _, h | .load32 _, _, h | .loadByte _, _, h | .op _ _, _, h | .panop _ _, _, h
  | .cmp _ _ _, _, h | .shift _ _ _, _, h | .baseAddr, _, h | .topAddr, _, h
  | .bytesInWord, _, h => by simp [simpleEq] at h

theorem simpleListEq_eq : ∀ {xs ys : List (ExpHOL 64)}, simpleListEq xs ys = true → xs = ys
  | [], [], _ => rfl
  | x :: xs, y :: ys, h => by
      simp only [simpleListEq, Bool.and_eq_true] at h
      rw [simpleEq_eq h.1, simpleListEq_eq h.2]
  | [], _ :: _, h => by simp [simpleListEq] at h
  | _ :: _, [], h => by simp [simpleListEq] at h

theorem ev_op_head {s : PanSemStateFiniteExact 64 σ} {o : BinOp} {e1 e2 : ExpHOL 64}
    {r : List (ExpHOL 64)} (h : ev s e1 = ev s e2) : ev s (.op o (e1 :: r)) = ev s (.op o (e2 :: r)) := by
  simp only [ev, evalHOLExact, evalListHOLExact] at h ⊢
  rw [h]

theorem addrPair_ev {s : PanSemStateFiniteExact 64 σ} (hab : EqAB s) {x y : ExpHOL 64}
    (h : addrPair x y = true) : ev s x = ev s y := by
  unfold addrPair at h
  split at h
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, rfl⟩ := h
    exact hab
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨rfl, rfl⟩, hr⟩ := h
    rw [← simpleListEq_eq hr]
    exact ev_op_head hab
  · simp at h

theorem guardPair_ev {s : PanSemStateFiniteExact 64 σ} (hab : EqAB s) {x y : ExpHOL 64}
    (h : guardPair x y = true) : ev s x = ev s y := by
  unfold guardPair at h
  split at h
  · rename_i a b
    have := addrPair_ev hab h
    simp only [ev, evalHOLExact] at this ⊢
    rw [this]
  · rename_i a b
    have := addrPair_ev hab h
    simp only [ev, evalHOLExact] at this ⊢
    rw [this]
  · simp at h

theorem isGuard_inv {c : ExpHOL 64} {a b : ProgHOL 64} (h : isGuard c a b = true) :
    ∃ x y z, c = .cmp .notEqual x y ∧ a = .return (.const z) ∧ b = .skip ∧ guardPair x y = true := by
  unfold isGuard at h
  split at h
  · exact ⟨_, _, _, rfl, rfl, rfl, h⟩
  · simp at h

theorem hoare_continue {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ s, InCtx s X → P s → Q (some .continue) s) :
    Hoare σ X P (.continue : ProgHOL 64) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def s .continue]
  exact h s hs hp

/-- The post: returned values are nonzero; on normal exit, `break` and `continue` the two
locals still agree. -/
def NzPost (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  (∀ v, r = some (.returned v) → v ≠ .val (.word 0)) ∧
    ((r = none ∨ r = some .break ∨ r = some .continue) → EqAB t)

theorem notAB_ne {n : MlS} (h : notAB n = true) : n ≠ nm "a" ∧ n ≠ nm "b" := by
  simp only [notAB, Bool.and_eq_true, decide_eq_true_eq] at h
  exact h

theorem nz_hoare : ∀ (p : ProgHOL 64), nzB p = true → Hoare σ X EqAB p NzPost
  | .skip, _ => hoare_skip fun _ _ h => ⟨fun _ hv => (by cases hv), fun _ => h⟩
  | .break, _ => hoare_break fun _ _ h => ⟨fun _ hv => (by cases hv), fun _ => h⟩
  | .continue, _ => hoare_continue fun _ _ h => ⟨fun _ hv => (by cases hv), fun _ => h⟩
  | .annot _ _, _ => hoare_annot fun _ _ h => ⟨fun _ hv => (by cases hv), fun _ => h⟩
  | .assign .local n e, hp => by
      obtain ⟨ha, hb⟩ := notAB_ne (by simpa [nzB] using hp)
      refine hoare_assign fun s _ h v _ _ => ⟨fun _ hv => (by cases hv), fun _ => ?_⟩
      unfold EqAB
      rw [lk_set_ne _ _ ha, lk_set_ne _ _ hb]
      exact h
  | .assign .global _ _, hp => by simp [nzB] at hp
  | .return (.const c), hp => by
      have hc : c ≠ 0 := by simpa [nzB] using hp
      refine hoare_return fun s _ _ v hv => ⟨fun w hw => ?_, fun h => ?_⟩
      · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
        subst hw
        rw [ev_const] at hv
        cases hv
        intro h
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h
        exact hc h
      · rcases h with h | h | h <;> cases h
  | .return (.var _ _), hp | .return (.rstruct _), hp | .return (.rfield _ _), hp
  | .return (.nstruct _ _), hp | .return (.nfield _ _), hp | .return (.load _ _), hp
  | .return (.load32 _), hp | .return (.loadByte _), hp | .return (.op _ _), hp
  | .return (.panop _ _), hp | .return (.cmp _ _ _), hp | .return (.shift _ _ _), hp
  | .return .baseAddr, hp | .return .topAddr, hp | .return .bytesInWord, hp => by
      simp [nzB] at hp
  | .seq a b, hp => by
      simp only [nzB, Bool.and_eq_true] at hp
      exact hoare_seq (nz_hoare a hp.1) (fun _ _ _ _ _ h => h)
        (hoare_pre (nz_hoare b hp.2) fun _ _ h => h.2 (Or.inl rfl))
  | .ite c a b, hp => by
      simp only [nzB, Bool.or_eq_true, Bool.and_eq_true] at hp
      rcases hp with hg | ⟨ha, hb⟩
      · obtain ⟨x, y, z, rfl, rfl, rfl, hxy⟩ := isGuard_inv hg
        refine hoare_ite ?_ (hoare_skip fun _ _ h => ⟨fun _ hv => (by cases hv), fun _ => h.1⟩)
        intro s _ ⟨h, w, hw, hw0⟩ _
        exfalso
        obtain ⟨xx, yy, hx, hy, hne⟩ := cmp_true hw hw0
        rw [guardPair_ev h hxy, hy] at hx
        cases hx
        simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hne
      · exact hoare_ite (hoare_pre (nz_hoare a ha) fun _ _ h => h.1)
          (hoare_pre (nz_hoare b hb) fun _ _ h => h.1)
  | .dec n sh e b, hp => by
      simp only [nzB, Bool.and_eq_true] at hp
      obtain ⟨ha, hb⟩ := notAB_ne hp.1
      refine hoare_dec fun s _ h v _ _ => ?_
      refine hoare_conseq (nz_hoare b hp.2) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
      · subst ht
        unfold EqAB
        rw [lk_set_ne _ _ ha, lk_set_ne _ _ hb]
        exact h
      · refine ⟨hq.1, fun hr => ?_⟩
        have := hq.2 hr
        unfold EqAB at this ⊢
        simp only []
        rw [lookup_restore ha, lookup_restore hb]
        exact this
  | .while c b, hp => by
      simp only [nzB] at hp
      refine hoare_while (I := EqAB) (fun _ h => h)
        (hoare_conseq (nz_hoare b hp) (fun _ _ h => h.1) fun r t _ _ hq => ⟨fun hr => hq.2 (Or.inl hr),
          fun hr => hq.2 (Or.inr (Or.inr hr)),
          fun hr => ⟨fun _ hv => (by cases hv), fun _ => hq.2 (Or.inr (Or.inl hr))⟩, fun _ _ => hq⟩)
        fun s _ h _ => ⟨fun _ hv => (by cases hv), fun _ => h⟩
  | .tick, hp | .primitive _ _ _, hp | .store _ _, hp | .store32 _ _, hp | .storeByte _ _, hp
  | .extCall _ _ _ _ _, hp | .raise _ _, hp | .shMemLoad _ _ _ _, hp | .shMemStore _ _ _, hp
  | .call _ _ _, hp | .decCall _ _ _ _ _, hp => by simp [nzB] at hp

end sound

/-! ## `memeq` -/

def memeqParams : List (MlS × ShapeHOL) := [(nm "a", .one), (nm "b", .one), (nm "n", .one)]

abbrev memeqBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_memeq).2.2.1

theorem entry_memeq : fnEntry Guest.Software.guestFn_memeq =
    (nm "memeq", memeqParams, memeqBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memeq : guestCode (nm "memeq") = some (memeqParams, memeqBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
    entry_memeq

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
/-- Kernel check of memeq's body. -/
theorem memeq_nz : nzB memeqBody = true := by decide_cbv

theorem lookupCode_three {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc : MlS} {sa sb sc : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc)], bd, rsh)) (hab : pa ≠ pb)
    (hac : pa ≠ pc) (hbc : pb ≠ pc)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ ∃ A B C, vs = [A, B, C] ∧ callee.lookup pa = some A ∧ callee.lookup pb = some B := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, -⟩ := hcond
      match vs, hlen with
      | [A, B, C], _ =>
          refine ⟨rfl, A, B, C, rfl, ?_, ?_⟩
          · simp [hab, hac]
          · simp [hbc]
    · simp at hx

variable {σ : Type} {X : Ctx 64}

/-- **`memeq(a, a, n)` returns a nonzero word.** -/
theorem funSpec_memeq_self (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun vs _ r _ => ∀ A N, vs = [A, A, N] →
      ∀ v, r = .returned v → v ≠ .val (.word 0)) := by
  intro vs body callee rs hl s hs hloc r hr A N hvs v hv
  rw [hC] at hl
  obtain ⟨rfl, A', B', C', hABC, ha, hb⟩ :=
    lookupCode_three code_memeq (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have heq : EqAB s := by unfold EqAB; rw [hloc, ha, hb]
  have := nz_hoare (σ := σ) (X := X) memeqBody memeq_nz s hs heq (by rw [hr, hv]; trivial)
  rw [hr, hv] at this
  exact this.1 v rfl

end InitECandidate.Solver.Spec.Inv
