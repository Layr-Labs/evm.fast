import InitECandidate.Solver.SourceCost.LoopExtra.WalkLoop
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

/-!
# Pigeonhole over a counter slice of an effectful body

`sort_elems` runs `while width < n { ...; width = width * 2 }` and
`while left < n { var mid = left + width; ...; var right = mid + width; ...; <merge loops>;
left = right }`. The bodies call escape-free functions, write memory and run inner loops,
but the next counter value is a function of the current one and of locals the body
keeps: a *slice* of the body computes it from locals only, and everything else is a black
box that changes none of the slice's locals.

* `pureE A e`: `e` reads only constants and the locals in `A` (no memory, no globals),
  so it evaluates equally in any two states whose locals agree on `A` (`eval_pure`).
* `NIW σ A A' p`: from two states agreeing on `A`, two normal completions of `p` agree
  on `A'`. `sliceB A p` computes such an `A'` (`sliceB_sound`); statements outside the
  slice language keep exactly the locals `keepsB` accepts.
* `cost_while_slice`: if the guard is pure over the counter and kept context locals,
  the body keeps the context, the counter is in `sliceB`'s output, and the body's only
  good result is normal completion (escape-free calls, no `break`/`continue`/`return`),
  then the counter follows a fixed orbit and a good run makes at most `2 ^ width + 1`
  iterations (pigeonhole, as in `WalkLoop`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Pure expressions -/

mutual
def pureE (A : List MlS) : ExpHOL width → Bool
  | .const _ => true
  | .var .local y => A.contains y
  | .op _ es => pureL A es
  | .panop _ es => pureL A es
  | .cmp _ a b => pureE A a && pureE A b
  | .shift _ a b => pureE A a && pureE A b
  | _ => false
def pureL (A : List MlS) : List (ExpHOL width) → Bool
  | [] => true
  | e :: es => pureE A e && pureL A es
end

mutual
theorem eval_pure (A : List MlS) (S T : PanSemStateExact width σ) [DecidablePred S.memaddrs]
    [DecidablePred T.memaddrs] (hL : ∀ y, A.contains y = true → S.locals y = T.locals y) :
    ∀ e : ExpHOL width, pureE A e = true → evalHOLExact S e = evalHOLExact T e
  | .const _, _ => by simp only [evalHOLExact]
  | .var .local y, h => by
      simp only [pureE] at h
      simp only [evalHOLExact]
      exact hL y h
  | .var .global _, h => by simp [pureE] at h
  | .op _ es, h => by
      simp only [pureE] at h
      simp only [evalHOLExact]
      rw [eval_pureL A S T hL es h]
  | .panop _ es, h => by
      simp only [pureE] at h
      simp only [evalHOLExact]
      rw [eval_pureL A S T hL es h]
  | .cmp _ a b, h => by
      simp only [pureE, Bool.and_eq_true] at h
      simp only [evalHOLExact]
      rw [eval_pure A S T hL a h.1, eval_pure A S T hL b h.2]
  | .shift _ a b, h => by
      simp only [pureE, Bool.and_eq_true] at h
      simp only [evalHOLExact]
      rw [eval_pure A S T hL a h.1, eval_pure A S T hL b h.2]
  | .rstruct _, h | .rfield _ _, h | .nstruct _ _, h | .nfield _ _, h => by simp [pureE] at h
  | .load _ _, h | .load32 _, h | .loadByte _, h => by simp [pureE] at h
  | .baseAddr, h | .topAddr, h | .bytesInWord, h => by simp [pureE] at h
theorem eval_pureL (A : List MlS) (S T : PanSemStateExact width σ) [DecidablePred S.memaddrs]
    [DecidablePred T.memaddrs] (hL : ∀ y, A.contains y = true → S.locals y = T.locals y) :
    ∀ es : List (ExpHOL width), pureL A es = true →
      evalListHOLExact S es = evalListHOLExact T es
  | [], _ => by simp only [evalListHOLExact]
  | e :: es, h => by
      simp only [pureL, Bool.and_eq_true] at h
      simp only [evalListHOLExact]
      rw [eval_pure A S T hL e h.1, eval_pureL A S T hL es h.2]
end

/-! ## Agreement on a set of locals -/

/-- The locals in `A` have the same values in `s` and `t`. -/
def AgreeOn (A : List MlS) (s t : PanSemStateFiniteExact width σ) : Prop :=
  ∀ y, y ∈ A → s.locals.lookup y = t.locals.lookup y

theorem agreeOn_mono {A A' : List MlS} {s t : PanSemStateFiniteExact width σ}
    (h : AgreeOn A s t) (hs : ∀ y, y ∈ A' → y ∈ A) : AgreeOn A' s t := fun y hy => h y (hs y hy)

theorem evalFinite_pure {A : List MlS} {s t : PanSemStateFiniteExact width σ}
    (h : AgreeOn A s t) {e : ExpHOL width} (he : pureE A e = true) :
    @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e =
      @evalHOLExact width σ _ t.toExact (fun a => Classical.propDecidable (t.memaddrs a)) e :=
  @eval_pure width _ σ A s.toExact t.toExact (fun a => Classical.propDecidable (s.memaddrs a))
    (fun a => Classical.propDecidable (t.memaddrs a))
    (fun y hy => h y (List.contains_iff_mem.mp hy)) e he

/-- Weak non-interference: two normal completions from states agreeing on `A` agree on
`A'`. -/
def NIW (σ : Type) (A A' : List MlS) (p : ProgHOL width) : Prop :=
  ∀ s t : PanSemStateFiniteExact width σ, AgreeOn A s t →
    (evaluateHOLFiniteState s p).1 = none → (evaluateHOLFiniteState t p).1 = none →
    AgreeOn A' (evaluateHOLFiniteState s p).2 (evaluateHOLFiniteState t p).2

theorem niw_mono {A A' A'' : List MlS} {p : ProgHOL width} (h : NIW σ A A' p)
    (hs : ∀ y, y ∈ A'' → y ∈ A') : NIW σ A A'' p :=
  fun s t hst h1 h2 => agreeOn_mono (h s t hst h1 h2) hs

/-- Locals kept by `p` (on normal exit) keep agreeing. -/
theorem niw_keeps (A : List MlS) (p : ProgHOL width) :
    NIW σ A (A.filter (fun y => keepsB y p)) p := by
  intro s t hst h1 h2 y hy
  rw [List.mem_filter] at hy
  have hk := keepsB_sound (σ := σ) y p hy.2
  rw [hk s (Or.inl h1), hk t (Or.inl h2)]
  exact hst y hy.1

/-! ## Normal-exit unfoldings -/

theorem assign_none {s : PanSemStateFiniteExact width σ} {x : MlS} {e : ExpHOL width}
    (h : (evaluateHOLFiniteState s (.assign .local x e)).1 = none) :
    ∃ v, @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e =
        some v ∧ evaluateHOLFiniteState s (.assign .local x e) = (none, setVarHOLFinite x v s) := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local x e)]
  dsimp only
  split
  · intro h; cases h
  · rename_i v hv
    split
    · intro _; exact ⟨v, hv, rfl⟩
    · intro h; cases h

theorem seq_none {s : PanSemStateFiniteExact width σ} {a b : ProgHOL width}
    (h : (evaluateHOLFiniteState s (.seq a b)).1 = none) :
    (evaluateHOLFiniteState s a).1 = none ∧
      evaluateHOLFiniteState s (.seq a b) =
        evaluateHOLFiniteState (evaluateHOLFiniteState s a).2 b := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none => intro _; exact ⟨rfl, rfl⟩
  | some r => intro h; simp only [h1] at h; cases h

theorem ite_none {s : PanSemStateFiniteExact width σ} {g : ExpHOL width} {a b : ProgHOL width}
    (h : (evaluateHOLFiniteState s (.ite g a b)).1 = none) :
    ∃ w, @evalHOLExact width σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) g =
        some (.val (.word w)) ∧
      evaluateHOLFiniteState s (.ite g a b) =
        (if w = 0 then evaluateHOLFiniteState s b else evaluateHOLFiniteState s a) := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite g a b)]
  dsimp only
  split
  · rename_i w hw; intro _; exact ⟨w, hw, rfl⟩
  · intro h; cases h

theorem dec_none {s : PanSemStateFiniteExact width σ} {x : MlS} {sh : ShapeHOL} {e : ExpHOL width}
    {p : ProgHOL width} (h : (evaluateHOLFiniteState s (.dec x sh e p)).1 = none) :
    ∃ v, @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e =
        some v ∧ (evaluateHOLFiniteState (setVarHOLFinite x v s) p).1 = none ∧
      (evaluateHOLFiniteState s (.dec x sh e p)).2 =
        { (evaluateHOLFiniteState (setVarHOLFinite x v s) p).2 with
          locals := HolFiniteMapExact.resVarEq
            (evaluateHOLFiniteState (setVarHOLFinite x v s) p).2.locals
            (x, s.locals.lookup x) } := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec x sh e p)]
  dsimp only
  split
  · intro h; cases h
  · rename_i v hv
    split
    · intro h; exact ⟨v, hv, h, rfl⟩
    · intro h; cases h

theorem lookup_setVar_eq {s : PanSemStateFiniteExact width σ} {x y : MlS} {v : ValueHOL width} :
    (setVarHOLFinite x v s).locals.lookup y = if y = x then some v else s.locals.lookup y := by
  by_cases h : y = x
  · subst h; simp [setVarHOLFinite, FUPDATE]
  · simp [setVarHOLFinite, FUPDATE, h, Ne.symm h]

/-! ## The slice analysis -/

/-- The names of `la` that are in `lb`. A separate function so that the kernel check
(`decide_cbv`) evaluates `lb` once rather than once per element of `la`. -/
def interNames (la lb : List MlS) : List MlS := la.filter (fun y => lb.contains y)

/-- Locals that two normal completions of `p` from states agreeing on `A` agree on. -/
def sliceB (A : List MlS) : ProgHOL width → List MlS
  | .assign .local x e =>
      if pureE A e then x :: A else A.filter (fun y => keepsB y (.assign .local x e))
  | .seq a b => sliceB (sliceB A a) b
  | .ite g a b =>
      if pureE A g then interNames (sliceB A a) (sliceB A b)
      else A.filter (fun y => keepsB y (.ite g a b))
  | .dec x _ e p =>
      let Ap := (sliceB (if pureE A e then x :: A else A.filter (fun y => y != x)) p).filter
        (fun y => y != x)
      if A.contains x then x :: Ap else Ap
  | p => A.filter (fun y => keepsB y p)

theorem sliceB_sound (A : List MlS) : ∀ p : ProgHOL width, NIW σ A (sliceB A p) p
  | .assign .local x e => by
      unfold sliceB
      split
      · rename_i hp
        intro s t hst h1 h2
        obtain ⟨v, hv, he⟩ := assign_none h1
        obtain ⟨v', hv', he'⟩ := assign_none h2
        rw [evalFinite_pure hst hp, hv'] at hv
        cases hv
        rw [he, he']
        intro y hy
        simp only [lookup_setVar_eq]
        split
        · rfl
        · rename_i hyx
          exact hst y ((List.mem_cons.mp hy).resolve_left hyx)
      · exact niw_keeps A _
  | .seq a b => by
      unfold sliceB
      intro s t hst h1 h2
      obtain ⟨h1a, e1⟩ := seq_none h1
      obtain ⟨h2a, e2⟩ := seq_none h2
      have ha := sliceB_sound A a s t hst h1a h2a
      rw [e1, e2]
      rw [e1] at h1
      rw [e2] at h2
      exact sliceB_sound _ b _ _ ha h1 h2
  | .ite g a b => by
      unfold sliceB
      split
      · rename_i hp
        intro s t hst h1 h2
        obtain ⟨w, hw, e1⟩ := ite_none h1
        obtain ⟨w', hw', e2⟩ := ite_none h2
        rw [evalFinite_pure hst hp, hw'] at hw
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw
        rw [e1] at h1 ⊢
        rw [e2] at h2 ⊢
        split
        · rename_i hz
          rw [if_pos hz] at h1 h2
          refine agreeOn_mono (sliceB_sound A b s t hst h1 h2) ?_
          intro y hy
          unfold interNames at hy
          exact List.contains_iff_mem.mp (List.mem_filter.mp hy).2
        · rename_i hz
          rw [if_neg hz] at h1 h2
          refine agreeOn_mono (sliceB_sound A a s t hst h1 h2) ?_
          intro y hy
          unfold interNames at hy
          exact (List.mem_filter.mp hy).1
      · exact niw_keeps A _
  | .dec x sh e p => by
      unfold sliceB
      dsimp only
      intro s t hst h1 h2
      obtain ⟨v, hv, hn1, e1⟩ := dec_none h1
      obtain ⟨v', hv', hn2, e2⟩ := dec_none h2
      have hin : AgreeOn (if pureE A e then x :: A else A.filter (fun y => y != x))
          (setVarHOLFinite x v s) (setVarHOLFinite x v' t) := by
        split
        · rename_i hp
          rw [evalFinite_pure hst hp, hv'] at hv
          cases hv
          intro y hy
          simp only [lookup_setVar_eq]
          split
          · rfl
          · rename_i hyx
            exact hst y ((List.mem_cons.mp hy).resolve_left hyx)
        · intro y hy
          rw [List.mem_filter] at hy
          have hyx : y ≠ x := by simpa using hy.2
          simp only [lookup_setVar_eq, if_neg hyx]
          exact hst y hy.1
      have hp := sliceB_sound _ p _ _ hin hn1 hn2
      rw [e1, e2]
      intro y hy
      simp only [lookup_resVarEq_restore]
      split
      · rename_i hyx
        subst hyx
        split at hy
        · rename_i hx; exact hst y (List.contains_iff_mem.mp hx)
        · have := (List.mem_filter.mp hy).2; simp at this
      · rename_i hyx
        have hy' : y ∈ (sliceB (if pureE A e then x :: A else A.filter (fun y => y != x)) p).filter
            (fun y => y != x) := by
          split at hy
          · exact (List.mem_cons.mp hy).resolve_left hyx
          · exact hy
        exact hp y (List.mem_filter.mp hy').1
  | .assign .global _ _ => niw_keeps A _
  | .skip => niw_keeps A _
  | .break => niw_keeps A _
  | .continue => niw_keeps A _
  | .annot _ _ => niw_keeps A _
  | .tick => niw_keeps A _
  | .primitive _ _ _ => niw_keeps A _
  | .store _ _ => niw_keeps A _
  | .store32 _ _ => niw_keeps A _
  | .storeByte _ _ => niw_keeps A _
  | .extCall _ _ _ _ _ => niw_keeps A _
  | .raise _ _ => niw_keeps A _
  | .return _ => niw_keeps A _
  | .shMemLoad _ _ _ _ => niw_keeps A _
  | .shMemStore _ _ _ => niw_keeps A _
  | .while _ _ => niw_keeps A _
  | .call _ _ _ => niw_keeps A _
  | .decCall _ _ _ _ _ => niw_keeps A _

/-! ## The loop rule -/

/-- Normal completions of the body from a state agreeing with `s` on `K` and with counter
`u`. -/
def SliceCand (X : Ctx width) (body : ProgHOL width) (n : MlS) (K : List MlS)
    (s : PanSemStateFiniteExact width σ) (u : BitVec width)
    (t : PanSemStateFiniteExact width σ) : Prop :=
  InCtx t X ∧ AgreeOn K s t ∧ t.locals.lookup n = some (.val (.word u)) ∧
    (evaluateHOLFiniteState t body).1 = none

open Classical in
/-- The counter after a normal completion from some candidate state. -/
noncomputable def sliceOut (body : ProgHOL width) (n : MlS)
    (P : BitVec width → PanSemStateFiniteExact width σ → Prop) (u : BitVec width) :
    Option (BitVec width) :=
  if h : ∃ t, P u t then wordLocal (evaluateHOLFiniteState (Classical.choose h) body).2 n
  else none

theorem agreeOn_symm {A : List MlS} {s t : PanSemStateFiniteExact width σ} (h : AgreeOn A s t) :
    AgreeOn A t s := fun y hy => (h y hy).symm

theorem agreeOn_trans {A : List MlS} {s t u : PanSemStateFiniteExact width σ}
    (h1 : AgreeOn A s t) (h2 : AgreeOn A t u) : AgreeOn A s u :=
  fun y hy => (h1 y hy).trans (h2 y hy)

theorem cost_while_slice {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {n : MlS}
    {K : List MlS} (hb : Cost σ X body B)
    (hex : ∀ s : PanSemStateFiniteExact width σ, InCtx s X →
      Good (evaluateHOLFiniteState s body).1 → (evaluateHOLFiniteState s body).1 = none)
    (hkeep : ∀ y, y ∈ K → Keeps σ y body)
    (hni : NIW σ (n :: K) [n] body)
    (hcp : pureE (n :: K) c = true)
    (hcn : ∀ s : PanSemStateFiniteExact width σ,
      (∃ r, @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c =
        some r) → ∃ v, s.locals.lookup n = some (.val (.word v))) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  classical
  let Out : PanSemStateFiniteExact width σ → BitVec width → Option (BitVec width) := fun s =>
    sliceOut body n (SliceCand X body n K s)
  let Q : PanSemStateFiniteExact width σ → BitVec width → Bool := fun s u =>
    decide (CondTrue (setVarHOLFinite n (.val (.word u)) s) c) && (Out s u).isSome
  let G : PanSemStateFiniteExact width σ → BitVec width → BitVec width := fun s u =>
    (Out s u).getD 0
  -- Q and G depend only on the context locals `K`
  have hQG : ∀ s s' : PanSemStateFiniteExact width σ, AgreeOn K s s' → Q s' = Q s ∧ G s' = G s := by
    intro s s' h
    have hC : SliceCand X body n K s' = SliceCand X body n K s := by
      funext u t
      apply propext
      unfold SliceCand
      constructor
      · rintro ⟨h1, h2, h3, h4⟩; exact ⟨h1, agreeOn_trans h h2, h3, h4⟩
      · rintro ⟨h1, h2, h3, h4⟩; exact ⟨h1, agreeOn_trans (agreeOn_symm h) h2, h3, h4⟩
    have hOut : Out s' = Out s := by simp only [Out, hC]
    have hcond : ∀ u, CondTrue (setVarHOLFinite n (.val (.word u)) s') c ↔
        CondTrue (setVarHOLFinite n (.val (.word u)) s) c := by
      intro u
      have hag : AgreeOn (n :: K) (setVarHOLFinite n (.val (.word u)) s')
          (setVarHOLFinite n (.val (.word u)) s) := by
        intro y hy
        simp only [lookup_setVar_eq]
        split
        · rfl
        · rename_i hyn
          exact (h y ((List.mem_cons.mp hy).resolve_left hyn)).symm
      unfold CondTrue evalHOLFinite
      rw [evalFinite_pure hag hcp]
    refine ⟨?_, ?_⟩
    · funext u
      simp only [Q]
      rw [hOut]
      congr 1
      exact decide_eq_decide.mpr (hcond u)
    · funext u
      simp only [G]
      rw [hOut]
  -- one normal body run from `decClock s`
  have hrun : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → ∀ v,
      s.locals.lookup n = some (.val (.word v)) →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none →
      Out s v = wordLocal (evaluateHOLFiniteState (decClockHOLFinite s) body).2 n ∧
        Q (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = Q s ∧
        G (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = G s := by
    intro s hs v hv hnone
    have hcand : SliceCand X body n K s v (decClockHOLFinite s) :=
      ⟨hs, fun _ _ => rfl, hv, hnone⟩
    have hex' : ∃ t, SliceCand X body n K s v t := ⟨_, hcand⟩
    have hspec := Classical.choose_spec hex'
    have hag : AgreeOn (n :: K) (decClockHOLFinite s) (Classical.choose hex') := by
      intro y hy
      rcases List.mem_cons.mp hy with rfl | hy
      · rw [hspec.2.2.1]; exact hv
      · exact hspec.2.1 y hy
    have hn := hni _ _ hag hnone hspec.2.2.2 n List.mem_cons_self
    refine ⟨?_, ?_⟩
    · simp only [Out, sliceOut, dif_pos hex']
      unfold wordLocal
      rw [hn]
    · have hk : AgreeOn K s (evaluateHOLFiniteState (decClockHOLFinite s) body).2 := by
        intro y hy
        rw [hkeep y hy _ (Or.inl hnone)]
        rfl
      exact hQG s _ hk
  -- doomed states
  let Doomed : PanSemStateFiniteExact width σ → Prop := fun s =>
    InCtx s X ∧ ∃ v, s.locals.lookup n = some (.val (.word v)) ∧
      runLenG (Q s) (G s) (2 ^ width + 1) v = 2 ^ width + 1
  have never : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → Doomed s →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s hk hd
    obtain ⟨hsc, v, hv, hfull⟩ := hd
    have hall := (runLenG_eq_iff (Q s) (G s) _ v).mp hfull
    have hq0 : Q s v = true := hall 0 (Nat.succ_pos _)
    have hR : setVarHOLFinite n (.val (.word v)) s = s := setVar_idem hv
    simp only [Q, Bool.and_eq_true, decide_eq_true_eq] at hq0
    obtain ⟨hct, hsome⟩ := hq0
    rw [hR] at hct
    obtain ⟨w, hw, hne⟩ := hct
    obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hsome
    have hdecs : InCtx (decClockHOLFinite s) X := hsc
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · cases hres : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
      | none =>
        dsimp only
        obtain ⟨hout, hQ', hG'⟩ := hrun s hsc v hv hres
        have hu1 : wordLocal (evaluateHOLFiniteState (decClockHOLFinite s) body).2 n = some u := by
          rw [← hout]; exact hu
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
          simp only [decClockHOLFinite] at this ⊢
          omega
        refine ih _ hlt _ rfl ⟨inCtx_eval hdecs body, u, wordLocal_eq_some hu1, ?_⟩
        rw [hQ', hG']
        have hGv : G s v = u := by simp only [G, hu, Option.getD_some]
        rw [← hGv]
        exact runLenG_full_step _ _ v hfull
      | some r =>
        have hng : ¬ Good (some r : Option (PanSemResultExact width)) := by
          intro hg
          have := hex _ hdecs (by rw [hres]; exact hg)
          rw [hres] at this
          cases this
        cases r with
        | «continue» => exact absurd (by simp [Good]) hng
        | «break» => exact absurd (by simp [Good]) hng
        | _ => exact hng
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup n with
    | some (.val (.word v)) => runLenG (Q s) (G s) (2 ^ width + 1) v
    | _ => 0
  have hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c →
      Good (evaluateHOLFiniteState s (.while c body)).1 → μ s ≤ 2 ^ width := by
    intro s hs hct hg
    obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
    simp only [μ, hv]
    have hle := runLenG_le (Q s) (G s) (2 ^ width + 1) v
    have hne : runLenG (Q s) (G s) (2 ^ width + 1) v ≠ 2 ^ width + 1 :=
      fun h => never _ s rfl ⟨hs, v, hv, h⟩ hg
    omega
  refine cost_while_good μ (2 ^ width) hb hM ?_
  intro s hs hct _ hg hexit hgt
  have hdecs : InCtx (decClockHOLFinite s) X := hs
  have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
    rcases hexit with h | h
    · exact h
    · have := hex _ hdecs (by rw [h]; simp [Good])
      rw [h] at this; cases this
  obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
  obtain ⟨u, hu⟩ := hcn _ (good_while_eval hgt)
  obtain ⟨hout, hQ', hG'⟩ := hrun s hs v hv hnone
  have hout' : Out s v = some u := by rw [hout]; exact wordLocal_of_lookup hu
  have hqv : Q s v = true := by
    simp only [Q, Bool.and_eq_true, decide_eq_true_eq, setVar_idem hv, hout',
      Option.isSome_some]
    exact ⟨hct, trivial⟩
  have hMs := hM s hs hct hg
  simp only [μ, hv] at hMs ⊢
  simp only [hu, hQ', hG']
  have hGv : G s v = u := by simp only [G, hout', Option.getD_some]
  have h1 : runLenG (Q s) (G s) (2 ^ width + 1) v =
      runLenG (Q s) (G s) (2 ^ width) (G s v) + 1 := by
    simp [runLenG, hqv]
  rw [h1] at hMs ⊢
  rw [hGv] at hMs ⊢
  rw [runLenG_succ_of_lt _ _ _ _ (by omega)]
  omega

/-! ## Recognizer -/

mutual
/-- Locals read by an expression (a heuristic: only used to pick context locals). -/
def locsE : ExpHOL width → List MlS
  | .var .local y => [y]
  | .rstruct es => locsL es
  | .rfield _ e => locsE e
  | .nfield _ e => locsE e
  | .load _ e => locsE e
  | .load32 e => locsE e
  | .loadByte e => locsE e
  | .op _ es => locsL es
  | .panop _ es => locsL es
  | .cmp _ a b => locsE a ++ locsE b
  | .shift _ a b => locsE a ++ locsE b
  | _ => []
def locsL : List (ExpHOL width) → List MlS
  | [] => []
  | e :: es => locsE e ++ locsL es
end

/-- Locals read by the assignments, declarations and guards of a body. -/
def locsP : ProgHOL width → List MlS
  | .assign _ _ e => locsE e
  | .dec _ _ e p => locsE e ++ locsP p
  | .seq a b => locsP a ++ locsP b
  | .ite g a b => locsE g ++ locsP a ++ locsP b
  | .while g p => locsE g ++ locsP p
  | _ => []

/-- Add `x` in front of `r` unless it is already there. -/
def dedupStep (x : MlS) (r : List MlS) : List MlS := if r.contains x then r else x :: r

/-- Drop repeated names. (`dedupStep` takes the recursive result as an argument, so the
kernel check (`decide_cbv`) evaluates it once: `decide_cbv` does not share the repeated
calls of an inline `if (dedupNames xs).contains x then dedupNames xs else ...`, which made
this exponential in the number of names.) -/
def dedupNames : List MlS → List MlS
  | [] => []
  | x :: xs => dedupStep x (dedupNames xs)

/-- The context of counter `n`: locals mentioned by the loop that the body keeps. -/
def sliceCtx (n : MlS) (c : ExpHOL width) (b : ProgHOL width) : List MlS :=
  (dedupNames (locsE c ++ locsP b)).filter (fun y => y != n && keepsB y b)

/-- `while c b` with counter `n` (a local compared by `c`): the body's only good exit is
normal completion, the guard is pure over `n` and the kept context, and the slice analysis
determines `n` after the body. The cheap exit checks come first. -/
def loopOkSlice (ef : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match onlyExitsCB ef false b && noContB b with
  | true =>
    match walkVar c with
    | some n =>
        let K := sliceCtx n c b
        pureE (n :: K) c && (sliceB (n :: K) b).contains n
    | none => false
  | false => false

theorem loopOkSlice_sound {ef : MlS → Bool} (hef : EfSound σ X.code ef) {c : ExpHOL width}
    {b : ProgHOL width} {B : Nat} (h : loopOkSlice ef c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkSlice at h
  split at h
  · rename_i hx
    simp only [Bool.and_eq_true] at hx
    obtain ⟨hox, hnc⟩ := hx
    split at h
    · rename_i n hn
      simp only [Bool.and_eq_true] at h
      obtain ⟨hcp, hsl⟩ := h
      have hnc' := noContB_sound (σ := σ) b hnc
      refine cost_while_slice (n := n) (K := sliceCtx n c b) hb ?_ ?_ ?_ hcp (walkVar_word hn)
      · intro s hs hg
        rcases exitPremise hef hox s hs hg with h | h
        · exact h
        · exact absurd h (hnc' s)
      · intro y hy
        unfold sliceCtx at hy
        rw [List.mem_filter, Bool.and_eq_true] at hy
        exact keepsB_sound y b hy.2.2
      · refine niw_mono (sliceB_sound _ b) ?_
        intro y hy
        rw [List.mem_singleton] at hy
        subst hy
        exact List.contains_iff_mem.mp hsl
    · cases h
  · cases h

end InitECandidate.Solver.SourceCost
