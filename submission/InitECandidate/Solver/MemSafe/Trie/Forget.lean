import InitECandidate.Solver.MemSafe.Trie.Closed

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000

/-!
# Forgetting globals: a relational preservation lemma

`expRdFreeB N e`: the expression `e` reads no global of `N`.
`grFreeB N S p`: the program `p` reads and writes no global of `N`, has none of the exotic statements
(`primitive`, external calls, shared memory, `tick`), and calls only functions in `S`.
`GrClosed N S C`: every code entry of a function in `S` passes `grFreeB N S`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

mutual
  def expFreeB (N : List MlS) : ExpHOL 64 → Bool
    | .const _ => true
    | .var .global n => decide (n ∉ N)
    | .var .local _ => true
    | .rstruct fs => expListFreeB N fs
    | .rfield _ e => expFreeB N e
    | .nstruct _ fs => expFieldsFreeB N fs
    | .nfield _ e => expFreeB N e
    | .load _ e => expFreeB N e
    | .load32 e => expFreeB N e
    | .loadByte e => expFreeB N e
    | .op _ es => expListFreeB N es
    | .panop _ es => expListFreeB N es
    | .cmp _ a b => expFreeB N a && expFreeB N b
    | .shift _ a b => expFreeB N a && expFreeB N b
    | .baseAddr => true
    | .topAddr => true
    | .bytesInWord => true
  def expListFreeB (N : List MlS) : List (ExpHOL 64) → Bool
    | [] => true
    | e :: es => expFreeB N e && expListFreeB N es
  def expFieldsFreeB (N : List MlS) : List (MlS × ExpHOL 64) → Bool
    | [] => true
    | (_, e) :: es => expFreeB N e && expFieldsFreeB N es
end

/-- A write target that is not a global of `N`. -/
def tgtFreeB (N : List MlS) : Option (VarKind × MlS) → Bool
  | some (.global, n) => decide (n ∉ N)
  | _ => true

/-- `p` reads and writes no global of `N` and calls only functions in `S`. -/
def grFreeB (N : List MlS) (S : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .dec _ _ e b => expFreeB N e && grFreeB N S b
  | .assign k n e => expFreeB N e && tgtFreeB N (some (k, n))
  | .store a v => expFreeB N a && expFreeB N v
  | .store32 a v => expFreeB N a && expFreeB N v
  | .storeByte a v => expFreeB N a && expFreeB N v
  | .seq a b => grFreeB N S a && grFreeB N S b
  | .ite c a b => expFreeB N c && grFreeB N S a && grFreeB N S b
  | .while c b => expFreeB N c && grFreeB N S b
  | .break => true
  | .continue => true
  | .call none f args => S.contains f && expListFreeB N args
  | .call (some (tgt, none)) f args => S.contains f && expListFreeB N args && tgtFreeB N tgt
  | .call (some (tgt, some (_, _, hp))) f args =>
      S.contains f && expListFreeB N args && tgtFreeB N tgt && grFreeB N S hp
  | .decCall _ _ f args k => S.contains f && expListFreeB N args && grFreeB N S k
  | .raise _ e => expFreeB N e
  | .return e => expFreeB N e
  | .annot _ _ => true
  | .extCall _ a b c d => expFreeB N a && expFreeB N b && expFreeB N c && expFreeB N d
  | .shMemStore _ a v => expFreeB N a && expFreeB N v
  | _ => false

def GrClosed (N : List MlS) (S : List MlS)
    (C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)) : Prop :=
  ∀ f, S.contains f = true → ∀ ps b rs, C f = some (ps, b, rs) → grFreeB N S b = true


variable {σ : Type}

/-! ## The evaluator does not read the globals outside `N` -/

theorem evalHOLExact_globals_congr (N : List MlS) (s : PanSemStateExact 64 σ) [DecidablePred s.memaddrs]
    (e : ExpHOL 64) (gl : MlS → Option (ValueHOL 64)) (hgl : ∀ g, g ∉ N → gl g = s.globals g) :
    expFreeB N e = true → evalHOLExact { s with globals := gl } e = evalHOLExact s e := by
  induction e using evalHOLExact.induct (state := s)
    (motive_2 := fun fs => expFieldsFreeB N fs = true →
      evalListFieldsHOLExact { s with globals := gl } fs = evalListFieldsHOLExact s fs)
    (motive_3 := fun es => expListFreeB N es = true →
      evalListHOLExact { s with globals := gl } es = evalListHOLExact s es)
  all_goals
    (simp only [expFreeB, expListFreeB, expFieldsFreeB, Bool.and_eq_true, decide_eq_true_eq] at * <;>
      simp only [evalHOLExact, evalListHOLExact, evalListFieldsHOLExact] <;> simp_all)

/-! ## The relation between a run and its globals-modified twin -/

/-- `t` is `s` with the globals replaced by a map that agrees with `s.globals` outside `N`. -/
def GrRel (N : List MlS) (s t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ gl : HolFiniteMapExact MlS (ValueHOL 64), t = { s with globals := gl } ∧
    ∀ g, g ∉ N → gl.lookup g = s.globals.lookup g

theorem grRel_refl (N : List MlS) (s : PanSemStateFiniteExact 64 σ) : GrRel N s s :=
  ⟨s.globals, rfl, fun _ _ => rfl⟩

theorem grRel_of {N : List MlS} {s : PanSemStateFiniteExact 64 σ} {gl : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : ∀ g, g ∉ N → gl.lookup g = s.globals.lookup g) : GrRel N s { s with globals := gl } := ⟨gl, rfl, h⟩

theorem grRel_with_locals {N : List MlS} {s t : PanSemStateFiniteExact 64 σ}
    (h : GrRel N s t) (L : HolFiniteMapExact MlS (ValueHOL 64)) :
    GrRel N { s with locals := L } { t with locals := L } := by
  obtain ⟨gl, rfl, hgl⟩ := h
  exact ⟨gl, rfl, hgl⟩

theorem grRel_with_memory {N : List MlS} {s t : PanSemStateFiniteExact 64 σ}
    (h : GrRel N s t) (m : RiscV.Word 64 → HolWordLab 64) :
    GrRel N { s with memory := m } { t with memory := m } := by
  obtain ⟨gl, rfl, hgl⟩ := h
  exact ⟨gl, rfl, hgl⟩

theorem grRel_setVar {N : List MlS} {s t : PanSemStateFiniteExact 64 σ} (h : GrRel N s t) (n : MlS)
    (v : ValueHOL 64) : GrRel N (setVarHOLFinite n v s) (setVarHOLFinite n v t) := by
  obtain ⟨gl, rfl, hgl⟩ := h
  exact ⟨gl, rfl, hgl⟩

theorem grRel_decClock {N : List MlS} {s t : PanSemStateFiniteExact 64 σ} (h : GrRel N s t) :
    GrRel N (decClockHOLFinite s) (decClockHOLFinite t) := by
  obtain ⟨gl, rfl, hgl⟩ := h
  exact ⟨gl, rfl, hgl⟩

theorem grRel_emptyLocals {N : List MlS} {s t : PanSemStateFiniteExact 64 σ} (h : GrRel N s t) :
    GrRel N (emptyLocalsHOLFinite s) (emptyLocalsHOLFinite t) := by
  obtain ⟨gl, rfl, hgl⟩ := h
  exact ⟨gl, rfl, hgl⟩

theorem grRel_callEntry {N : List MlS} {s t : PanSemStateFiniteExact 64 σ} (h : GrRel N s t)
    (callee : HolFiniteMapExact MlS (ValueHOL 64)) :
    GrRel N (callEntryStateHOLFinite s callee) (callEntryStateHOLFinite t callee) := by
  obtain ⟨gl, rfl, hgl⟩ := h
  exact ⟨gl, rfl, hgl⟩

theorem grRel_setKvar {N : List MlS} {s t : PanSemStateFiniteExact 64 σ} (h : GrRel N s t) {k : VarKind}
    {n : MlS} (hn : tgtFreeB N (some (k, n)) = true) (v : ValueHOL 64) :
    GrRel N (setKvarHOLFinite k n v s) (setKvarHOLFinite k n v t) := by
  obtain ⟨gl, rfl, hgl⟩ := h
  cases k with
  | «local» => exact ⟨gl, rfl, hgl⟩
  | «global» =>
      simp only [tgtFreeB, decide_eq_true_eq] at hn
      refine ⟨gl.update (n, v), rfl, fun g hg => ?_⟩
      show (gl.update (n, v)).lookup g = (s.globals.update (n, v)).lookup g
      by_cases hgn : g = n
      · subst hgn; simp [FUPDATE]
      · simp [FUPDATE, hgn, hgl g hg]

theorem grRel_valid {N : List MlS} {s t : PanSemStateFiniteExact 64 σ} (h : GrRel N s t) {k : VarKind}
    {n : MlS} (hn : tgtFreeB N (some (k, n)) = true) (v : ValueHOL 64) :
    isValidValueHOLFinite t k n v = isValidValueHOLFinite s k n v := by
  obtain ⟨gl, rfl, hgl⟩ := h
  cases k with
  | «local» => rfl
  | «global» =>
      simp only [tgtFreeB, decide_eq_true_eq] at hn
      simp only [isValidValueHOLFinite, lookupKvarHOLFinite, hgl n hn]

theorem evx_congr (N : List MlS) (s : PanSemStateFiniteExact 64 σ) (gl : HolFiniteMapExact MlS (ValueHOL 64))
    (hgl : ∀ g, g ∉ N → gl.lookup g = s.globals.lookup g) (e : ExpHOL 64) (hp : expFreeB N e = true) :
    @evalHOLExact 64 σ _ ({ s with globals := gl } : PanSemStateFiniteExact 64 σ).toExact
      (fun a => Classical.propDecidable (({ s with globals := gl } : PanSemStateFiniteExact 64 σ).memaddrs a)) e =
    @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e :=
  @evalHOLExact_globals_congr σ N s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e gl.lookup hgl hp

theorem evxl_congr (N : List MlS) (s : PanSemStateFiniteExact 64 σ) (gl : HolFiniteMapExact MlS (ValueHOL 64))
    (hgl : ∀ g, g ∉ N → gl.lookup g = s.globals.lookup g) (es : List (ExpHOL 64)) (hp : expListFreeB N es = true) :
    @evalListHOLExact 64 σ _ ({ s with globals := gl } : PanSemStateFiniteExact 64 σ).toExact
      (fun a => Classical.propDecidable (({ s with globals := gl } : PanSemStateFiniteExact 64 σ).memaddrs a)) es =
    @evalListHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) es := by
  induction es with
  | nil => rfl
  | cons e es ih =>
      simp only [expListFreeB, Bool.and_eq_true] at hp
      simp only [evalListHOLExact]
      rw [evx_congr N s gl hgl e hp.1, ih hp.2]

theorem valid_exact_congr (N : List MlS) (s : PanSemStateFiniteExact 64 σ) (gl : HolFiniteMapExact MlS (ValueHOL 64))
    (hgl : ∀ g, g ∉ N → gl.lookup g = s.globals.lookup g) (k : VarKind) (n : MlS)
    (hn : tgtFreeB N (some (k, n)) = true) (v : ValueHOL 64) :
    isValidValueHOLExact ({ s with globals := gl } : PanSemStateFiniteExact 64 σ).toExact k n v =
      isValidValueHOLExact s.toExact k n v := by
  have := grRel_valid (grRel_of hgl) hn v
  simpa [isValidValueHOLFinite_eq] using this

theorem shStore_congr (st : PanSemStateExact 64 σ) (gl : MlS → Option (ValueHOL 64))
    [inst : DecidablePred st.shMemaddrs] (w a : RiscV.Word 64) (nb : Nat) :
    @shMemStoreHOLExact 64 σ _ { st with globals := gl } inst w a nb =
      ((@shMemStoreHOLExact 64 σ _ st inst w a nb).1,
        { (@shMemStoreHOLExact 64 σ _ st inst w a nb).2 with globals := gl }) := by
  unfold shMemStoreHOLExact
  dsimp only
  repeat' split
  all_goals simp_all

/-- The statement proved by induction on the clock. -/
def GrP (N S : List MlS) (C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)) (m : Nat) : Prop :=
  ∀ (p : ProgHOL 64) (s t : PanSemStateFiniteExact 64 σ), grFreeB N S p = true → s.code.lookup = C →
    s.clock ≤ m → GrRel N s t →
    (evaluateHOLFiniteState t p).1 = (evaluateHOLFiniteState s p).1 ∧
      GrRel N (evaluateHOLFiniteState s p).2 (evaluateHOLFiniteState t p).2

theorem gr_level {N S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GrClosed N S C)
    (k : Nat) (ih : ∀ m < k, GrP (σ := σ) N S C m) :
    ∀ (p : ProgHOL 64) (s t : PanSemStateFiniteExact 64 σ), grFreeB N S p = true → s.code.lookup = C →
      s.clock ≤ k → GrRel N s t →
      (evaluateHOLFiniteState t p).1 = (evaluateHOLFiniteState s p).1 ∧
        GrRel N (evaluateHOLFiniteState s p).2 (evaluateHOLFiniteState t p).2
  | .skip, s, t, _, _, _, hr => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s .skip, evaluateHOLFiniteState_eq_evaluate_def t .skip]
      exact ⟨rfl, hr⟩
  | .break, s, t, _, _, _, hr => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s .break, evaluateHOLFiniteState_eq_evaluate_def t .break]
      exact ⟨rfl, hr⟩
  | .continue, s, t, _, _, _, hr => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s .continue, evaluateHOLFiniteState_eq_evaluate_def t .continue]
      exact ⟨rfl, hr⟩
  | .annot a b, s, t, _, _, _, hr => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.annot a b), evaluateHOLFiniteState_eq_evaluate_def t (.annot a b)]
      exact ⟨rfl, hr⟩
  | .assign kd n e, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl e hp.1]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e = ev'
      cases ev' with
      | none => exact ⟨rfl, grRel_of hgl⟩
      | some v =>
          have hv := grRel_valid (grRel_of hgl) hp.2 v
          simp only [hv]
          split
          · exact ⟨rfl, grRel_setKvar (grRel_of hgl) hp.2 v⟩
          · exact ⟨rfl, grRel_of hgl⟩
  | .dec n sh e b, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl e hp.1]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e = ev'
      cases ev' with
      | none => exact ⟨rfl, grRel_of hgl⟩
      | some v =>
          dsimp only
          split
          · have hb := gr_level hS k ih b (setVarHOLFinite n v s)
              (setVarHOLFinite n v { s with globals := gl }) hp.2 hc hk (grRel_setVar (grRel_of hgl) n v)
            obtain ⟨hb1, gl1, hb2, hb3⟩ := hb
            refine ⟨hb1, ?_⟩
            rw [hb2]
            exact ⟨gl1, rfl, hb3⟩
          · exact ⟨rfl, grRel_of hgl⟩
  | .seq a b, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s _, evaluateHOLFiniteState_eq_evaluate_def t _]
      dsimp only
      obtain ⟨ha1, ha2⟩ := gr_level hS k ih a s t hp.1 hc hk hr
      have hcode : (evaluateHOLFiniteState s a).2.code.lookup = C := by rw [code_preserved]; exact hc
      have hc' : (evaluateHOLFiniteState s a).2.clock ≤ k :=
        Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
      generalize evaluateHOLFiniteState s a = E at ha1 ha2 hcode hc' ⊢
      generalize evaluateHOLFiniteState t a = E' at ha1 ha2 ⊢
      obtain ⟨r, st⟩ := E
      obtain ⟨r', st'⟩ := E'
      dsimp only at ha1 ha2 hcode hc' ⊢
      subst ha1
      cases r' with
      | none => exact gr_level hS k ih b st st' hp.2 hcode hc' ha2
      | some _ => exact ⟨rfl, ha2⟩
  | .ite c a b, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl c hp.1.1]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) c = ev'
      cases ev' with
      | none => exact ⟨rfl, grRel_of hgl⟩
      | some v =>
          rcases v with w | _ | _
          · rcases w with w
            dsimp only
            split
            · exact gr_level hS k ih b s { s with globals := gl } hp.2 hc hk (grRel_of hgl)
            · exact gr_level hS k ih a s { s with globals := gl } hp.1.2 hc hk (grRel_of hgl)
          · exact ⟨rfl, grRel_of hgl⟩
          · exact ⟨rfl, grRel_of hgl⟩
  | .store a v, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl a hp.1, evx_congr N s gl hgl v hp.2]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) a = ea
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) v = ev'
      rcases ea with _ | va
      · exact ⟨rfl, grRel_of hgl⟩
      · rcases va with w | _ | _
        · rcases w with w
          dsimp only
          rcases ev' with _ | value
          · exact ⟨rfl, grRel_of hgl⟩
          · dsimp only
            split
            · next m heq =>
                simp only [heq]
                exact ⟨trivial, grRel_with_memory (grRel_of hgl) m⟩
            · next heq =>
                simp only [heq]
                exact ⟨trivial, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
  | .store32 a v, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl a hp.1, evx_congr N s gl hgl v hp.2]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) a = ea
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) v = ev'
      rcases ea with _ | va
      · exact ⟨rfl, grRel_of hgl⟩
      · rcases va with w | _ | _
        · rcases w with w
          dsimp only
          rcases ev' with _ | vv
          · exact ⟨rfl, grRel_of hgl⟩
          · rcases vv with w2 | _ | _
            · rcases w2 with w2
              dsimp only
              split
              · next m heq =>
                  simp only [heq]
                  exact ⟨trivial, grRel_with_memory (grRel_of hgl) m⟩
              · next heq =>
                  simp only [heq]
                  exact ⟨trivial, grRel_of hgl⟩
            · exact ⟨rfl, grRel_of hgl⟩
            · exact ⟨rfl, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
  | .storeByte a v, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl a hp.1, evx_congr N s gl hgl v hp.2]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) a = ea
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) v = ev'
      rcases ea with _ | va
      · exact ⟨rfl, grRel_of hgl⟩
      · rcases va with w | _ | _
        · rcases w with w
          dsimp only
          rcases ev' with _ | vv
          · exact ⟨rfl, grRel_of hgl⟩
          · rcases vv with w2 | _ | _
            · rcases w2 with w2
              dsimp only
              split
              · next m heq =>
                  simp only [heq]
                  exact ⟨trivial, grRel_with_memory (grRel_of hgl) m⟩
              · next heq =>
                  simp only [heq]
                  exact ⟨trivial, grRel_of hgl⟩
            · exact ⟨rfl, grRel_of hgl⟩
            · exact ⟨rfl, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
  | .raise x e, s, t, hp, hc, hk, hr => by
      simp only [grFreeB] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl e hp]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e = ev'
      cases hx : s.eshapes.lookup x with
      | none => dsimp only; exact ⟨rfl, grRel_of hgl⟩
      | some shape =>
          rcases ev' with _ | value
          · dsimp only; exact ⟨rfl, grRel_of hgl⟩
          · dsimp only
            split
            · exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
            · exact ⟨rfl, grRel_of hgl⟩
  | .return e, s, t, hp, hc, hk, hr => by
      simp only [grFreeB] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl e hp]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e = ev'
      cases ev' with
      | none => exact ⟨rfl, grRel_of hgl⟩
      | some v =>
          dsimp only
          split
          · exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
          · exact ⟨rfl, grRel_of hgl⟩
  | .while c b, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      simp only [evalHOLFinite]
      rw [evx_congr N s gl hgl c hp.1]
      generalize @evalHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) c = ev'
      rcases ev' with _ | value
      · exact ⟨rfl, grRel_of hgl⟩
      · rcases value with w | _ | _
        · rcases w with w
          dsimp only
          by_cases hw0 : w.1 ≠ 0
          · simp only [if_pos hw0]
            by_cases hck : s.clock = 0
            · simp only [if_pos hck]
              first
                | exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
                | exact ⟨trivial, grRel_emptyLocals (grRel_of hgl)⟩
            · simp only [if_neg hck]
              have hlt0 : s.clock - 1 < k := by omega
              have hb := ih (s.clock - 1) hlt0 b (decClockHOLFinite s)
                (decClockHOLFinite { s with globals := gl }) hp.2 hc (Nat.le_refl _)
                (grRel_decClock (grRel_of hgl))
              obtain ⟨hb1, hb2⟩ := hb
              have hcode : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.code.lookup = C := by
                rw [code_preserved]; exact hc
              have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
                Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hlt0
              generalize evaluateHOLFiniteState (decClockHOLFinite s) b = E at hb1 hb2 hcode hlt ⊢
              generalize evaluateHOLFiniteState (decClockHOLFinite { s with globals := gl }) b = E' at hb1 hb2 ⊢
              obtain ⟨r, st⟩ := E
              obtain ⟨r', st'⟩ := E'
              dsimp only at hb1 hb2 hcode hlt ⊢
              subst hb1
              have hw : grFreeB N S (.while c b) = true := by
                simp only [grFreeB, Bool.and_eq_true]; exact hp
              rcases r' with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev)
              all_goals first
                | exact ih st.clock hlt (.while c b) st st' hw hcode (Nat.le_refl _) hb2
                | exact ⟨rfl, hb2⟩
          · simp only [if_neg hw0]
            first
              | exact ⟨rfl, grRel_of hgl⟩
              | exact ⟨trivial, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
        · exact ⟨rfl, grRel_of hgl⟩
  | .call none f args, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      simp only [evalListHOLFinite]
      rw [evxl_congr N s gl hgl args hp.2]
      generalize @evalListHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) args = vs'
      cases vs' with
      | none => exact ⟨rfl, grRel_of hgl⟩
      | some values =>
          dsimp only
          cases hL : PanSemStateFiniteExact.lookupCodeHOLFinite s.code.lookup f values with
          | none =>
              simp only [hL]
              first | exact ⟨rfl, grRel_of hgl⟩ | exact ⟨trivial, grRel_of hgl⟩
          | some r0 =>
              obtain ⟨body, callee, rs⟩ := r0
              simp only [hL]
              by_cases hck : s.clock = 0
              · simp only [if_pos hck]
                first
                  | exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
                  | exact ⟨trivial, grRel_emptyLocals (grRel_of hgl)⟩
              · simp only [if_neg hck]
                have hlt0 : (callEntryStateHOLFinite s callee).clock < k := by
                  simp only [callEntryStateHOLFinite]; omega
                rw [hc] at hL
                obtain ⟨ps, hcode⟩ := lookupCode_some' hL
                have hbody := hS f hp.1 ps body rs hcode
                obtain ⟨hc1, hc2⟩ := ih _ hlt0 body (callEntryStateHOLFinite s callee)
                  (callEntryStateHOLFinite { s with globals := gl } callee) hbody hc (Nat.le_refl _)
                  (grRel_callEntry (grRel_of hgl) callee)
                generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hc1 hc2 ⊢
                generalize evaluateHOLFiniteState (callEntryStateHOLFinite { s with globals := gl } callee) body = E'
                  at hc1 hc2 ⊢
                obtain ⟨r, st⟩ := E
                obtain ⟨r', st'⟩ := E'
                dsimp only at hc1 hc2 ⊢
                subst hc1
                rcases r' with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev)
                all_goals dsimp only
                all_goals (try split)
                all_goals first
                  | exact ⟨rfl, hc2⟩
                  | exact ⟨trivial, hc2⟩
                  | exact ⟨rfl, grRel_emptyLocals hc2⟩
                  | exact ⟨trivial, grRel_emptyLocals hc2⟩
  | Flapjack.Pancake.PanLang.ProgHOL.call (some (tgt, none)) f args, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨⟨hf, hargs⟩, htgt⟩ := hp
      rcases tgt with _ | ⟨kk, nn⟩
      all_goals
        obtain ⟨gl, rfl, hgl⟩ := hr
        rw [evaluateHOLFiniteState_eq_evaluate_def s _,
          evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
        dsimp only
        simp only [evalListHOLFinite]
        rw [evxl_congr N s gl hgl args hargs]
        generalize @evalListHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) args = vs'
        cases vs' with
        | none => exact ⟨rfl, grRel_of hgl⟩
        | some values =>
            dsimp only
            cases hL : PanSemStateFiniteExact.lookupCodeHOLFinite s.code.lookup f values with
            | none =>
                simp only [hL]
                first | exact ⟨rfl, grRel_of hgl⟩ | exact ⟨trivial, grRel_of hgl⟩
            | some r0 =>
                obtain ⟨body, callee, rs⟩ := r0
                simp only [hL]
                by_cases hck : s.clock = 0
                · simp only [if_pos hck]
                  first
                    | exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
                    | exact ⟨trivial, grRel_emptyLocals (grRel_of hgl)⟩
                · simp only [if_neg hck]
                  have hlt0 : (callEntryStateHOLFinite s callee).clock < k := by
                    simp only [callEntryStateHOLFinite]; omega
                  rw [hc] at hL
                  obtain ⟨ps, hcode⟩ := lookupCode_some' hL
                  have hbody := hS f hf ps body rs hcode
                  obtain ⟨hc1, hc2⟩ := ih _ hlt0 body (callEntryStateHOLFinite s callee)
                    (callEntryStateHOLFinite { s with globals := gl } callee) hbody hc (Nat.le_refl _)
                    (grRel_callEntry (grRel_of hgl) callee)
                  have hst : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.clock < k :=
                    Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ body) hlt0
                  have hcode' : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.code.lookup = C := by
                    rw [code_preserved]; exact hc
                  generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hc1 hc2 hst hcode' ⊢
                  generalize evaluateHOLFiniteState (callEntryStateHOLFinite { s with globals := gl } callee) body = E'
                    at hc1 hc2 ⊢
                  obtain ⟨r, st⟩ := E
                  obtain ⟨r', st'⟩ := E'
                  dsimp only at hc1 hc2 hst hcode' ⊢
                  subst hc1
                  rcases r' with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev)
                  all_goals dsimp only
                  all_goals (try simp only [valid_exact_congr N s gl hgl _ _ htgt])
                  all_goals (repeat' split)
                  all_goals first
                    | exact ⟨rfl, hc2⟩
                    | exact ⟨trivial, hc2⟩
                    | exact ⟨rfl, grRel_emptyLocals hc2⟩
                    | exact ⟨trivial, grRel_emptyLocals hc2⟩
                    | exact ⟨rfl, grRel_with_locals hc2 _⟩
                    | exact ⟨trivial, grRel_with_locals hc2 _⟩
                    | exact ⟨rfl, grRel_setKvar (grRel_with_locals hc2 _) htgt _⟩
                    | exact ⟨trivial, grRel_setKvar (grRel_with_locals hc2 _) htgt _⟩
                    | (exfalso; contradiction)
  | Flapjack.Pancake.PanLang.ProgHOL.call (some (tgt, some (eid, hv, hpr))) f args, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨⟨⟨hf, hargs⟩, htgt⟩, hhp⟩ := hp
      rcases tgt with _ | ⟨kk, nn⟩
      all_goals
        obtain ⟨gl, rfl, hgl⟩ := hr
        rw [evaluateHOLFiniteState_eq_evaluate_def s _,
          evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
        dsimp only
        simp only [evalListHOLFinite]
        rw [evxl_congr N s gl hgl args hargs]
        generalize @evalListHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) args = vs'
        cases vs' with
        | none => exact ⟨rfl, grRel_of hgl⟩
        | some values =>
            dsimp only
            cases hL : PanSemStateFiniteExact.lookupCodeHOLFinite s.code.lookup f values with
            | none =>
                simp only [hL]
                first | exact ⟨rfl, grRel_of hgl⟩ | exact ⟨trivial, grRel_of hgl⟩
            | some r0 =>
                obtain ⟨body, callee, rs⟩ := r0
                simp only [hL]
                by_cases hck : s.clock = 0
                · simp only [if_pos hck]
                  first
                    | exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
                    | exact ⟨trivial, grRel_emptyLocals (grRel_of hgl)⟩
                · simp only [if_neg hck]
                  have hlt0 : (callEntryStateHOLFinite s callee).clock < k := by
                    simp only [callEntryStateHOLFinite]; omega
                  rw [hc] at hL
                  obtain ⟨ps, hcode⟩ := lookupCode_some' hL
                  have hbody := hS f hf ps body rs hcode
                  obtain ⟨hc1, hc2⟩ := ih _ hlt0 body (callEntryStateHOLFinite s callee)
                    (callEntryStateHOLFinite { s with globals := gl } callee) hbody hc (Nat.le_refl _)
                    (grRel_callEntry (grRel_of hgl) callee)
                  have hst : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.clock < k :=
                    Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ body) hlt0
                  have hcode' : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.code.lookup = C := by
                    rw [code_preserved]; exact hc
                  generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hc1 hc2 hst hcode' ⊢
                  generalize evaluateHOLFiniteState (callEntryStateHOLFinite { s with globals := gl } callee) body = E'
                    at hc1 hc2 ⊢
                  obtain ⟨r, st⟩ := E
                  obtain ⟨r', st'⟩ := E'
                  dsimp only at hc1 hc2 hst hcode' ⊢
                  subst hc1
                  rcases r' with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev)
                  all_goals dsimp only
                  all_goals (try simp only [valid_exact_congr N s gl hgl _ _ htgt])
                  all_goals (try simp only [valid_exact_congr N s gl hgl VarKind.local hv rfl])
                  all_goals (repeat' split)
                  all_goals first
                    | exact ⟨rfl, hc2⟩
                    | exact ⟨trivial, hc2⟩
                    | exact ⟨rfl, grRel_emptyLocals hc2⟩
                    | exact ⟨trivial, grRel_emptyLocals hc2⟩
                    | exact ⟨rfl, grRel_with_locals hc2 _⟩
                    | exact ⟨trivial, grRel_with_locals hc2 _⟩
                    | exact ⟨rfl, grRel_setKvar (grRel_with_locals hc2 _) htgt _⟩
                    | exact ⟨trivial, grRel_setKvar (grRel_with_locals hc2 _) htgt _⟩
                    | exact ih st.clock hst hpr _ _ hhp hcode' (Nat.le_refl _)
                        (grRel_setVar (grRel_with_locals hc2 _) _ _)
                    | (exfalso; contradiction)
  | Flapjack.Pancake.PanLang.ProgHOL.decCall rn sh f args cont, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨⟨hf, hargs⟩, hk'⟩ := hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      simp only [evalListHOLFinite]
      rw [evxl_congr N s gl hgl args hargs]
      generalize @evalListHOLExact 64 σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) args = vs'
      cases vs' with
      | none => exact ⟨rfl, grRel_of hgl⟩
      | some values =>
          dsimp only
          cases hL : PanSemStateFiniteExact.lookupCodeHOLFinite s.code.lookup f values with
          | none =>
              simp only [hL]
              first | exact ⟨rfl, grRel_of hgl⟩ | exact ⟨trivial, grRel_of hgl⟩
          | some r0 =>
              obtain ⟨body, callee, rs⟩ := r0
              simp only [hL]
              by_cases hck : s.clock = 0
              · simp only [if_pos hck]
                first
                  | exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
                  | exact ⟨trivial, grRel_emptyLocals (grRel_of hgl)⟩
              · simp only [if_neg hck]
                have hlt0 : (callEntryStateHOLFinite s callee).clock < k := by
                  simp only [callEntryStateHOLFinite]; omega
                rw [hc] at hL
                obtain ⟨ps, hcode⟩ := lookupCode_some' hL
                have hbody := hS f hf ps body rs hcode
                obtain ⟨hc1, hc2⟩ := ih _ hlt0 body (callEntryStateHOLFinite s callee)
                  (callEntryStateHOLFinite { s with globals := gl } callee) hbody hc (Nat.le_refl _)
                  (grRel_callEntry (grRel_of hgl) callee)
                have hst : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.clock < k :=
                  Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ body) hlt0
                have hcode' : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.code.lookup = C := by
                  rw [code_preserved]; exact hc
                generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hc1 hc2 hst hcode' ⊢
                generalize evaluateHOLFiniteState (callEntryStateHOLFinite { s with globals := gl } callee) body = E'
                  at hc1 hc2 ⊢
                obtain ⟨r, st⟩ := E
                obtain ⟨r', st'⟩ := E'
                dsimp only at hc1 hc2 hst hcode' ⊢
                subst hc1
                rcases r' with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev)
                all_goals dsimp only
                all_goals (repeat' split)
                all_goals first
                  | exact ⟨rfl, hc2⟩
                  | exact ⟨trivial, hc2⟩
                  | exact ⟨rfl, grRel_emptyLocals hc2⟩
                  | exact ⟨trivial, grRel_emptyLocals hc2⟩
                  | (exfalso; contradiction)
                  | exact (by
                      obtain ⟨h31, gl3, h32, h33⟩ := ih st.clock hst cont (setVarHOLFinite rn v { st with locals := s.locals })
                        (setVarHOLFinite rn v { st' with locals := s.locals }) hk' hcode' (Nat.le_refl _)
                        (grRel_setVar (grRel_with_locals hc2 s.locals) rn v)
                      dsimp only
                      refine ⟨h31, ?_⟩
                      rw [h32]
                      exact ⟨gl3, rfl, h33⟩)
  | .primitive _ _ _, _, _, hp, _, _, _ => by simp [grFreeB] at hp
  | .extCall fn a b c d, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨⟨⟨ha, hb⟩, hc'⟩, hd⟩ := hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      simp only [evalHOLFinite]
      rw [evx_congr N s gl hgl a ha, evx_congr N s gl hgl b hb, evx_congr N s gl hgl c hc',
        evx_congr N s gl hgl d hd]
      generalize @evalHOLExact 64 σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) a = ea
      generalize @evalHOLExact 64 σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) b = eb
      generalize @evalHOLExact 64 σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) c = ec
      generalize @evalHOLExact 64 σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) d = ed
      rcases ea with _ | ⟨⟨w1⟩ | _ | _⟩ <;> rcases eb with _ | ⟨⟨w2⟩ | _ | _⟩ <;>
        rcases ec with _ | ⟨⟨w3⟩ | _ | _⟩ <;> rcases ed with _ | ⟨⟨w4⟩ | _ | _⟩ <;> dsimp only <;>
        first | exact ⟨rfl, grRel_of hgl⟩ | skip
      split
      · next b1 b2 h1 h2 =>
          simp only [h1, h2]
          split
          · next ev hff =>
              simp only [hff]
              first
                | exact ⟨trivial, grRel_emptyLocals (grRel_of hgl)⟩
                | exact ⟨rfl, grRel_emptyLocals (grRel_of hgl)⟩
          · next nf nb hff =>
              simp only [hff]
              first
                | exact ⟨trivial, gl, rfl, hgl⟩
                | exact ⟨rfl, gl, rfl, hgl⟩
      · first
          | exact ⟨trivial, grRel_of hgl⟩
          | exact ⟨rfl, grRel_of hgl⟩
  | .shMemLoad _ _ _ _, _, _, hp, _, _, _ => by simp [grFreeB] at hp
  | .shMemStore op a v, s, t, hp, hc, hk, hr => by
      simp only [grFreeB, Bool.and_eq_true] at hp
      obtain ⟨gl, rfl, hgl⟩ := hr
      rw [evaluateHOLFiniteState_eq_evaluate_def s _,
        evaluateHOLFiniteState_eq_evaluate_def { s with globals := gl } _]
      dsimp only
      rw [evx_congr N s gl hgl a hp.1, evx_congr N s gl hgl v hp.2]
      generalize @evalHOLExact 64 σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) a = ea
      generalize @evalHOLExact 64 σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) v = ev'
      rcases ea with _ | ⟨⟨w1⟩ | _ | _⟩ <;> rcases ev' with _ | ⟨⟨w2⟩ | _ | _⟩ <;> dsimp only <;>
        first | exact ⟨rfl, grRel_of hgl⟩ | skip
      have h := @shStore_congr σ s.toExact gl.lookup (fun key => Classical.propDecidable (s.shMemaddrs key))
        w2.1 w1.1 (nbOpHOL op)
      have h' : @shMemStoreHOLExact 64 σ _ ({ s with globals := gl } : PanSemStateFiniteExact 64 σ).toExact
          (fun key => Classical.propDecidable (s.shMemaddrs key)) w2.1 w1.1 (nbOpHOL op) = _ := h
      have key : ∀ (O2 : PanSemStateExact 64 σ) (hO2 : O2.FiniteSupport) (o' : PanSemStateExact 64 σ)
          (ho' : o'.FiniteSupport), O2.globals = s.globals.lookup → o' = { O2 with globals := gl.lookup } →
          GrRel N (ofExact O2 hO2) (ofExact o' ho') := by
        intro O2 hO2 o' ho' hO2g he
        subst he
        refine ⟨⟨gl.lookup, ho'.2.1⟩, rfl, fun g hg => ?_⟩
        show gl.lookup g = O2.globals g
        rw [hO2g]
        exact hgl g hg
      refine ⟨by rw [h'], key _ _ _ _ (shStore_globals _ _ _ _) ?_⟩
      rw [h']
  | .tick, _, _, hp, _, _, _ => by simp [grFreeB] at hp

/-- **A checked program does not read the globals of `N`:** its run from a state whose globals agree
with another state off `N` gives the same result and a state of the same kind. -/
theorem gr_preserved {N S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : GrClosed N S C)
    (p : ProgHOL 64) (s t : PanSemStateFiniteExact 64 σ) (hp : grFreeB N S p = true)
    (hc : s.code.lookup = C) (hr : GrRel N s t) :
    (evaluateHOLFiniteState t p).1 = (evaluateHOLFiniteState s p).1 ∧
      GrRel N (evaluateHOLFiniteState s p).2 (evaluateHOLFiniteState t p).2 := by
  suffices H : ∀ k, GrP (σ := σ) N S C k from H s.clock p s t hp hc (Nat.le_refl _) hr
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact gr_level hS k ih

/-- The types whose objects survive the forgetting: pointer-free heap types without hook, record or tag. -/
def keepTy (t : Nat) : Bool :=
  (decide (Hooks.RecTyOK t) || decide (t = Types.tB8)) && !(Hooks.recTys.contains t) && (t != Types.tSLA) && ((Types.guestC.ty t).region == .heap) &&
    (Types.guestC.ty t).fixed.all (fun k => decide (k = .scalar ∨ k = .prot)) &&
    decide ((Types.guestC.ty t).rest = .scalar ∨ (Types.guestC.ty t).rest = .prot) &&
    (Types.guestC.tags.lookup t).isNone

/-- The typed globals that are forgotten: their target is not a surviving type. -/
def forgotten : List MlS :=
  typedGlobals.filter fun g => match Types.guestC.GT.lookup g with
    | some (.nptr t) => !keepTy t
    | some (.ptr t) => !keepTy t
    | some (.uptr ts) => !ts.all keepTy
    | _ => false


theorem forgotten_nptr : forgotten.all (fun g => match Types.guestC.GT.lookup g with
    | some (.nptr _) => true
    | _ => false) = true := by
  conv => lhs; cbv

theorem trieFns_gr :
    trieFns.all (fun e => grFreeB forgotten (trieFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem grClosed_trie : GrClosed forgotten (trieFns.map Prod.fst) guestCode :=
  closed_of_entries (chk := grFreeB forgotten) trieFns_valid trieFns_gr

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.gr_preserved
#print axioms InitECandidate.Solver.MemSafe.Trie.grClosed_trie
