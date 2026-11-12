import InitECandidate.Solver.Compiler.WordToStack.Basic
import Flapjack.Compiler.Backend.Semantics.WordSem.Props.CodeOnlyGrows

/-!
# `CodeBoundedW` is preserved by word evaluation

By `evaluate_ind`, following the structure of Flapjack's `evaluate_code_subspt`
(`WordSem/Props/CodeOnlyGrows.lean`): every statement other than `Install` leaves `code` and
`compileOracle` unchanged (the `*_const` field lemmas), and `Install` adds the programs of
`compileOracle 0` and shifts the oracle, both of which `CodeBoundedW` bounds.
-/

namespace InitECandidate.Solver.Compiler.WordToStack

open Flapjack Flapjack.WordSemStateFiniteExact

set_option autoImplicit false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

section
variable {width : Nat} [NeZero width] {C F : Type} (S : Nat)

private theorem cb_alloc (w : BitVec width) (names : WordLangCutsetsHOL)
    (s : WordSemStateFiniteExact width C F) (h : CodeBoundedW S s) :
    CodeBoundedW S (alloc w names s).2 :=
  have c := allocConst w names s _ _ rfl
  CodeBoundedW.of_eq c.2.2.1 c.2.2.2.2.2.2.2.1 h

private theorem cb_shareInst (op : WordMemOp) (v : Nat) (c : BitVec width)
    (s : WordSemStateFiniteExact width C F) (h : CodeBoundedW S s) :
    CodeBoundedW S (shareInst (rw := width) op v c s).2 :=
  have c := shareInstConst op v c s _ _ rfl
  CodeBoundedW.of_eq c.2.2.2.2.1 c.2.2.2.2.2.2.2.2.1 h

private theorem cb_cutState {names : WordLangCutsetsHOL} {s next : WordSemStateFiniteExact width C F}
    (hc : cutState names s = some next) (h : CodeBoundedW S s) : CodeBoundedW S next := by
  obtain ⟨l, rfl⟩ := cutStateConst names s next hc
  exact CodeBoundedW.of_eq rfl rfl h

private theorem cb_popEnv {s next : WordSemStateFiniteExact width C F} (hp : popEnv s = some next)
    (h : CodeBoundedW S s) : CodeBoundedW S next :=
  have c := popEnvConst s next hp
  CodeBoundedW.of_eq c.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 c.2.2.2.2.1 h

private theorem cb_pushEnv (envs : Spt (WordLocW width) × Spt (WordLocW width))
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (s : WordSemStateFiniteExact width C F) (h : CodeBoundedW S s) :
    CodeBoundedW S (pushEnv envs handler s) := by
  rcases handler with _ | ⟨_, _, _, _⟩ <;> exact CodeBoundedW.of_eq rfl rfl h

private theorem cb_seq (c1 c2 : WordLangProgHOL (BitVec width)) (s : WordSemStateFiniteExact width C F)
    (hfirst : CodeBoundedW S s → CodeBoundedW S (evaluate c1 s).2)
    (hsecond : ∀ res next, evaluate c1 s = (res, next) → res = none →
      CodeBoundedW S next → CodeBoundedW S (evaluate c2 next).2) :
    CodeBoundedW S s → CodeBoundedW S (evaluate (.seq c1 c2) s).2 := by
  intro h0
  rw [evaluate, fix_clock_evaluate]
  have h1 := hfirst h0
  cases hstep : evaluate c1 s with
  | mk result next =>
      rw [hstep] at h1
      cases result with
      | none => exact hsecond none next hstep rfl h1
      | some result => exact h1

private theorem cb_loop (names exitNames : WordLangNumSetHOL) (body : WordLangProgHOL (BitVec width))
    (s : WordSemStateFiniteExact width C F)
    (hbody : ∀ v, cutState (names, .ln) s = some v →
      CodeBoundedW S v → CodeBoundedW S (evaluate body v).2)
    (hrecur : ∀ v res next, cutState (names, .ln) s = some v →
      evaluate body v = (res, next) → wordSemContLoop res = true → next.clock ≠ 0 →
      CodeBoundedW S (decClock next) →
      CodeBoundedW S (evaluate (wordSemSTOP (.loop names body exitNames)) (decClock next)).2) :
    CodeBoundedW S s → CodeBoundedW S (evaluate (.loop names body exitNames) s).2 := by
  intro h0
  rw [evaluate]
  cases hcut : cutState (names, .ln) s with
  | none => exact h0
  | some v =>
      dsimp only
      rw [fix_clock_evaluate]
      have hv := cb_cutState S hcut h0
      have h1 := hbody v hcut hv
      cases hstep : evaluate body v with
      | mk result next =>
          dsimp only
          rw [hstep] at h1
          by_cases hcont : wordSemContLoop result = true
          · simp only [if_pos hcont]
            by_cases hz : next.clock = 0
            · simp only [hz, ↓reduceDIte, flushState]
              exact CodeBoundedW.of_eq rfl rfl h1
            · simp only [hz, ↓reduceDIte]
              exact hrecur v result next hcut hstep hcont hz (CodeBoundedW.of_eq rfl rfl h1)
          · simp only [if_neg hcont]
            repeat' split
            all_goals first
              | exact h1
              | (rename_i hc; dsimp only; exact cb_cutState S hc h1)

private theorem cb_returningCall (n : List Nat) (names : WordLangCutsetsHOL)
    (retHandler : WordLangProgHOL (BitVec width))
    (l1 l2 : Nat) (dest : Option Nat) (args : List Nat)
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (s : WordSemStateFiniteExact width C F) (xs args1 : List (WordLocW width))
    (prog : WordLangProgHOL (BitVec width)) (ss : Option Nat)
    (envs : Spt (WordLocW width) × Spt (WordLocW width))
    (hg : getVars args s = some xs) (hbad : ¬ wordSemBadDestArgs dest args = true)
    (hf : wordSemFindCode dest (wordSemAddRetLoc (some (n, names, retHandler, l1, l2)) xs)
      s.code s.stackSize = some (args1, prog, ss))
    (hnames : ¬ (sptDomainEmpty names.1 ∨ ¬ n.Nodup))
    (henvs : wordSemCutEnvs names s.locals = some envs) (hz : s.clock ≠ 0)
    (hcallee : CodeBoundedW S (callEnv args1 ss (pushEnv envs handler (decClock s))) →
      CodeBoundedW S (evaluate prog (callEnv args1 ss (pushEnv envs handler (decClock s)))).2)
    (hreturn : ∀ x ys t popped,
      evaluate prog (callEnv args1 ss (pushEnv envs handler (decClock s))) =
        (some (.result x ys), t) →
      ¬ (x ≠ .loc l1 l2 ∨ ys.length ≠ n.length) → popEnv t = some popped →
      sptDomainEqUnion popped.locals envs.1 envs.2 →
      CodeBoundedW S (setVars n ys popped) →
      CodeBoundedW S (evaluate retHandler (setVars n ys popped)).2)
    (hexception : ∀ x y t n' hprog l1' l2',
      evaluate prog (callEnv args1 ss (pushEnv envs handler (decClock s))) =
        (some (.exception x y), t) →
      handler = some (n', hprog, l1', l2') → x = .loc l1' l2' →
      sptDomainEqUnion t.locals envs.1 envs.2 →
      CodeBoundedW S (setVar n' y t) →
      CodeBoundedW S (evaluate hprog (setVar n' y t)).2) :
    CodeBoundedW S s →
    CodeBoundedW S
      (evaluate (.call (some (n, names, retHandler, l1, l2)) dest args handler) s).2 := by
  intro h0
  have ht := (evaluate_def_rebound (width := width) (C := C) (F := F)).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  rw [ht]
  simp only [hg, hbad, Bool.false_eq_true, if_false, hf, hnames, henvs, hz]
  have hstart : CodeBoundedW S (callEnv args1 ss (pushEnv envs handler (decClock s))) :=
    CodeBoundedW.of_eq (s := pushEnv envs handler (decClock s)) rfl rfl
      (cb_pushEnv S envs handler _ (CodeBoundedW.of_eq rfl rfl h0))
  have h1 := hcallee hstart
  rcases hcv : evaluate prog (callEnv args1 ss (pushEnv envs handler (decClock s))) with ⟨rc, t⟩
  rw [hcv] at h1
  rcases rc with _ | ⟨x, ys⟩ | ⟨x, y⟩ | k | k | _ | _ | _ | _
  · exact h1
  · simp only
    split
    · exact h1
    · rename_i hvalid
      cases hp : popEnv t with
      | none => exact h1
      | some popped =>
          dsimp only
          have hpop := cb_popEnv S hp h1
          split
          · rename_i hdom
            exact hreturn x ys t popped hcv hvalid hp hdom (CodeBoundedW.of_eq rfl rfl hpop)
          · exact hpop
  · cases hh : handler with
    | none => exact h1
    | some hv =>
        obtain ⟨n', hprog, l1', l2'⟩ := hv
        dsimp only
        split
        · exact h1
        · rename_i hloc
          split
          · rename_i hdom
            exact hexception x y t n' hprog l1' l2' hcv hh
              (Classical.byContradiction hloc) hdom (CodeBoundedW.of_eq rfl rfl h1)
          · exact h1
  all_goals exact h1

private theorem cb_tailCall (dest : Option Nat) (args : List Nat) (s : WordSemStateFiniteExact width C F)
    (xs args1 : List (WordLocW width)) (prog : WordLangProgHOL (BitVec width)) (ss : Option Nat)
    (hg : getVars args s = some xs) (hbad : ¬ wordSemBadDestArgs dest args = true)
    (hf : wordSemFindCode dest (wordSemAddRetLoc (none : Option (List Nat × WordLangCutsetsHOL ×
      WordLangProgHOL (BitVec width) × Nat × Nat)) xs) s.code s.stackSize =
      some (args1, prog, ss)) (hz : s.clock ≠ 0)
    (hcallee : CodeBoundedW S (callEnv args1 ss (decClock s)) →
      CodeBoundedW S (evaluate prog (callEnv args1 ss (decClock s))).2) :
    CodeBoundedW S s → CodeBoundedW S (evaluate (.call none dest args none) s).2 := by
  intro h0
  have ht := (evaluate_def_rebound (width := width) (C := C) (F := F)).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  rw [ht]
  simp only [hg, hbad, Bool.false_eq_true, if_false, hf, hz]
  have h1 := hcallee (CodeBoundedW.of_eq rfl rfl h0)
  rcases hcv : evaluate prog (callEnv args1 ss (decClock s)) with ⟨result, next⟩
  rw [hcv] at h1
  split <;> exact h1

private theorem cb_mustTerminate (body : WordLangProgHOL (BitVec width))
    (s : WordSemStateFiniteExact width C F)
    (hbody : s.termdep ≠ 0 →
      CodeBoundedW S { s with clock := wordSemMustTerminateLimit width, termdep := s.termdep - 1 } →
      CodeBoundedW S (evaluate body
        { s with clock := wordSemMustTerminateLimit width, termdep := s.termdep - 1 }).2) :
    CodeBoundedW S s → CodeBoundedW S (evaluate (.mustTerminate body) s).2 := by
  intro h0
  rw [evaluate]
  split
  · exact h0
  · rename_i hdep
    have hsub := hbody hdep (CodeBoundedW.of_eq rfl rfl h0)
    cases hstep : evaluate body
        { s with clock := wordSemMustTerminateLimit width, termdep := s.termdep - 1 } with
    | mk result next =>
        rw [hstep] at hsub
        dsimp only
        repeat' split
        all_goals first | exact h0 | exact CodeBoundedW.of_eq rfl rfl hsub

private theorem cb_install (s : WordSemStateFiniteExact width C F)
    (cb : WordSemBuffer width 8) (db : WordSemBuffer width width) (env : Spt (WordLocW width))
    (ptr k : Nat) (L : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (hL : ∀ e ∈ L, wsize e.2.2 ≤ S) (h : CodeBoundedW S s) :
    CodeBoundedW S { s with
      codeBuffer := cb
      dataBuffer := db
      code := sptUnion s.code (sptFromAList L)
      locals := sptInsert ptr (.loc k 0) env
      fpRegs := HolFiniteMapExact.empty
      compileOracle := holShiftSeq 1 s.compileOracle
      stackMax := none
      stackSize := .ln } := by
  refine ⟨?_, ?_⟩
  · intro n a p hl
    simp only [sptLookup_sptUnion] at hl
    cases hc : sptLookup n s.code with
    | some v =>
      rw [hc] at hl
      cases hl
      exact h.1 n a p hc
    | none =>
      rw [hc, sptLookup_sptFromAList] at hl
      exact hL (n, a, p) (sptAListLookup_mem _ _ _ hl)
  · intro i e he
    exact h.2 (i + 1) e he

/-- **`CodeBoundedW` is preserved by evaluation.** -/
theorem codeBoundedW_evaluate_aux (p : WordLangProgHOL (BitVec width))
    (s : WordSemStateFiniteExact width C F) :
    CodeBoundedW S s → CodeBoundedW S (evaluate p s).2 := by
  apply evaluate_ind (fun p s => CodeBoundedW S s → CodeBoundedW S (evaluate p s).2) ?_ p s
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_⟩
  · intro s h; rw [evaluate]; exact h
  · intro n names s h
    rw [evaluate]
    repeat' split
    all_goals first
      | exact h
      | exact cb_alloc S _ _ _ h
  · intro t1 t2 addr offset words s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro pri moves s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro i s h
    rw [evaluate]
    cases hi : inst i s with
    | none => exact h
    | some next =>
      have c := instConstFull i s next hi
      exact CodeBoundedW.of_eq c.1 c.2.2.2.2.1 h
  · intro v exp s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro v name s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro v exp s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro b dst src s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro exp v s h
    rw [evaluate]
    repeat' split
    all_goals first
      | exact h
      | (rename_i hm; dsimp only
         have c := memStoreConst _ _ _ _ hm
         exact CodeBoundedW.of_eq c.2.2.2.2.2.2.2.2.1 c.2.2.2.2.2.2.2.2.2.2.2.2.1 h)
  · intro s h
    rw [evaluate]
    split
    · exact CodeBoundedW.of_eq rfl rfl h
    · exact CodeBoundedW.of_eq rfl rfl h
  · exact fun p s ih => cb_mustTerminate S p s ih
  · intro c1 c2 s ih
    exact cb_seq S c1 c2 s ih.2
      (fun res next heval hnone => ih.1 res next ⟨heval.symm, hnone⟩)
  · intro n ms s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro n s h
    rw [evaluate]
    repeat' split
    all_goals first
      | exact h
      | (rename_i hj; dsimp only
         have c := jumpExcConst _ _ _ hj
         exact CodeBoundedW.of_eq c.2.2.2.2.1 c.2.2.2.2.2.2.2.2.1 h)
  · intro k s h; rw [evaluate]; exact h
  · intro k s h; rw [evaluate]; exact h
  · intro cmp r1 ri c1 c2 s ih h
    rw [evaluate]
    repeat' split
    all_goals first
      | exact h
      | exact ih.1 (some _) (some _) _ _ true
          ⟨by rw [‹getVar r1 s = some _›, ‹getVarImm ri s = some _›], rfl, rfl,
            ‹wordSemWordCmp _ _ _ = some true›, rfl⟩ h
      | exact ih.2 (some _) (some _) _ _ false
          ⟨by rw [‹getVar r1 s = some _›, ‹getVarImm ri s = some _›], rfl, rfl,
            ‹wordSemWordCmp _ _ _ = some false›, Bool.noConfusion⟩ h
  · intro names body exitNames s ih
    exact cb_loop S names exitNames body s ih.2
      (fun v res next hcut heval hcont hz => ih.1 v res next ⟨hcut, heval.symm, hcont, hz⟩)
  · intro r l1 s h
    rw [evaluate]
    split
    · exact CodeBoundedW.of_eq rfl rfl h
    · exact h
  · intro ptr len dptr dlen names s h
    rw [evaluate]
    repeat' split
    all_goals dsimp only
    all_goals repeat' split
    all_goals first
      | exact h
      | exact cb_install S s _ _ _ _ _ _
          (by intro e he; apply h.2 0 e; simp_all) h
  · intro r1 r2 s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro r1 r2 s h
    rw [evaluate]
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro fi p1 l1 p2 l2 names s h
    unfold evaluate
    repeat' split
    all_goals first | exact h | exact CodeBoundedW.of_eq rfl rfl h
  · intro op v exp s h
    rw [evaluate]
    repeat' split
    all_goals first
      | exact h
      | exact cb_shareInst S _ _ _ _ h
  · intro ret dest args handler s ih h0
    rcases ih with ⟨hreturn, hexception, hcallee, htail⟩
    have hcall := (evaluate_def_rebound (width := width) (C := C) (F := F)).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
    cases hg : getVars args s with
    | none => rw [hcall]; simp only [hg]; exact h0
    | some xs =>
      by_cases hbad : wordSemBadDestArgs dest args = true
      · rw [hcall]; simp only [hg, hbad, ↓reduceIte]; exact h0
      · cases hf : wordSemFindCode dest (wordSemAddRetLoc ret xs) s.code s.stackSize with
        | none =>
          rw [hcall]; simp only [hg, hbad, hf]; exact h0
        | some triple =>
          obtain ⟨args1, prog, ss⟩ := triple
          cases ret with
          | none =>
            cases handler with
            | some handler =>
              rw [hcall]; simp only [hg, hbad, hf]; exact h0
            | none =>
              by_cases hz : s.clock = 0
              · rw [hcall]; simp only [hg, hbad, ↓reduceIte, hf, hz]
                exact CodeBoundedW.of_eq rfl rfl h0
              · refine cb_tailCall S dest args s xs args1 prog ss hg hbad hf hz ?_ h0
                exact htail xs (args1, prog, ss) args1 (prog, ss) prog ss
                  ⟨hg, hbad, hf, rfl, rfl, rfl, rfl, hz⟩
          | some ret =>
            obtain ⟨n, names, retHandler, l1, l2⟩ := ret
            by_cases hnames : sptDomainEmpty names.1 ∨ ¬ n.Nodup
            · rw [hcall]; simp only [hg, hbad, ↓reduceIte, hf, hnames]; exact h0
            · cases he : wordSemCutEnvs names s.locals with
              | none =>
                rw [hcall]; simp only [hg, hbad, ↓reduceIte, hf, hnames, he]; exact h0
              | some envs =>
                by_cases hz : s.clock = 0
                · rw [hcall]; simp only [hg, hbad, ↓reduceIte, hf, hnames, he, hz]
                  exact CodeBoundedW.of_eq rfl rfl h0
                · refine cb_returningCall S n names retHandler l1 l2 dest args handler
                    s xs args1 prog ss envs hg hbad hf hnames he hz ?_ ?_ ?_ h0
                  · exact hcallee xs (args1, prog, ss) args1 (prog, ss) prog ss
                      (n, names, retHandler, l1, l2) n (names, retHandler, l1, l2) names
                      (retHandler, l1, l2) retHandler (l1, l2) l1 l2 envs
                      ⟨hg, hbad, hf, rfl, rfl, rfl, rfl, rfl, rfl, rfl, hnames, he, hz⟩
                  · intro x ys t popped hev hv hp hd
                    exact hreturn xs (args1, prog, ss) args1 (prog, ss) prog ss
                      (n, names, retHandler, l1, l2) n (names, retHandler, l1, l2) names
                      (retHandler, l1, l2) retHandler (l1, l2) l1 l2 envs
                      (some (.result x ys)) t (.result x ys) x ys popped
                      ⟨hg, hbad, hf, rfl, rfl, rfl, rfl, rfl, rfl, rfl, hnames, he, hz,
                        hev, rfl, rfl, hv, hp, hd⟩
                  · intro x y t n' hprog l1' l2' hev hh hl hd
                    exact hexception xs (args1, prog, ss) args1 (prog, ss) prog ss
                      (n, names, retHandler, l1, l2) n (names, retHandler, l1, l2) names
                      (retHandler, l1, l2) retHandler (l1, l2) l1 l2 envs
                      (some (.exception x y)) t (.exception x y) x y
                      (n', hprog, l1', l2') n' (hprog, l1', l2') hprog (l1', l2') l1' l2'
                      ⟨hg, hbad, hf, rfl, rfl, rfl, rfl, rfl, rfl, rfl, hnames, he, hz,
                        hev, rfl, rfl, hh, rfl, rfl, rfl, hl, hd⟩

theorem codeBoundedW_evaluate {p : WordLangProgHOL (BitVec width)}
    {s t : WordSemStateFiniteExact width C F} {r : Option (WordSemResult width)}
    (h : evaluate p s = (r, t)) (hs : CodeBoundedW S s) : CodeBoundedW S t := by
  have := codeBoundedW_evaluate_aux S p s hs
  rw [h] at this
  exact this

end

end InitECandidate.Solver.Compiler.WordToStack

/-! ## Helpers for the `Call` cases -/

namespace InitECandidate.Solver.Compiler.WordToStack

open Flapjack

section
variable {width : Nat} [NeZero width] {C F : Type} {S : Nat}

theorem CodeBoundedW.callEnv_decClock {s : WordSemStateFiniteExact width C F}
    (args1 : List (WordLocW width)) (ss : Option Nat) (h : CodeBoundedW S s) :
    CodeBoundedW S (WordSemStateFiniteExact.callEnv args1 ss (WordSemStateFiniteExact.decClock s)) :=
  CodeBoundedW.of_eq rfl rfl h

theorem CodeBoundedW.callEnv_pushEnv {s : WordSemStateFiniteExact width C F}
    (args1 : List (WordLocW width)) (ss : Option Nat)
    (envs : Spt (WordLocW width) × Spt (WordLocW width))
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat)) (h : CodeBoundedW S s) :
    CodeBoundedW S (WordSemStateFiniteExact.callEnv args1 ss
      (WordSemStateFiniteExact.pushEnv envs handler (WordSemStateFiniteExact.decClock s))) := by
  rcases handler with _ | ⟨_, _, _, _⟩ <;> exact CodeBoundedW.of_eq rfl rfl h

theorem CodeBoundedW.findCode {s : WordSemStateFiniteExact width C F} {dest : Option Nat}
    {xs args1 : List (WordLocW width)} {prog : WordLangProgHOL (BitVec width)} {ss : Option Nat}
    (hf : wordSemFindCode dest xs s.code s.stackSize = some (args1, prog, ss))
    (h : CodeBoundedW S s) : wsize prog ≤ S := by
  obtain ⟨k, n, hk⟩ := WordProps.findCode_lookup s.code dest xs s.stackSize args1 prog ss hf
  exact h.1 k n prog hk

theorem CodeBoundedW.setVars {s : WordSemStateFiniteExact width C F} (n : List Nat)
    (ys : List (WordLocW width)) (h : CodeBoundedW S s) :
    CodeBoundedW S (WordSemStateFiniteExact.setVars n ys s) :=
  CodeBoundedW.of_eq rfl rfl h

theorem CodeBoundedW.setVar {s : WordSemStateFiniteExact width C F} (n : Nat)
    (y : WordLocW width) (h : CodeBoundedW S s) :
    CodeBoundedW S (WordSemStateFiniteExact.setVar n y s) :=
  CodeBoundedW.of_eq rfl rfl h

theorem CodeBoundedW.popEnv {s t : WordSemStateFiniteExact width C F}
    (hp : WordSemStateFiniteExact.popEnv s = some t) (h : CodeBoundedW S s) : CodeBoundedW S t :=
  have c := WordSemStateFiniteExact.popEnvConst s t hp
  CodeBoundedW.of_eq c.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1 c.2.2.2.2.1 h

/-- Arithmetic of a call: callee witness `eb` (from clock `c - 1`) and continuation witness
`ec`. -/
theorem callBound {c b post eb ec wprog w2 w : Nat} (hc : c ≠ 0) (hp : wprog ≤ S)
    (hb : eb + (S + 1) * b ≤ (S + 1) * (c - 1) + wprog)
    (he : ec + (S + 1) * post ≤ (S + 1) * b + w2) (hw : w2 + 1 ≤ w) :
    (eb + ec) + (S + 1) * post ≤ (S + 1) * c + w := by
  have : (S + 1) * (c - 1) + (S + 1) = (S + 1) * c := by
    rw [← Nat.mul_succ]; congr 1; omega
  omega

/-- Arithmetic of a call whose only witness is the callee's, `post ≤ b`. -/
theorem callBound1 {c b post eb wprog w : Nat} (hc : c ≠ 0) (hp : wprog ≤ S)
    (hb : eb + (S + 1) * b ≤ (S + 1) * (c - 1) + wprog) (hpost : post ≤ b) :
    eb + (S + 1) * post ≤ (S + 1) * c + w := by
  have : (S + 1) * (c - 1) + (S + 1) = (S + 1) * c := by
    rw [← Nat.mul_succ]; congr 1; omega
  have := Nat.mul_le_mul_left (S + 1) hpost
  omega

end

end InitECandidate.Solver.Compiler.WordToStack

namespace InitECandidate.Solver.Compiler.WordToStack

open Flapjack Flapjack.WordSemStateFiniteExact

section
variable {width : Nat} [NeZero width] {C F : Type}

theorem clock_callEnv_pushEnv_decClock (args1 : List (WordLocW width)) (ss : Option Nat)
    (envs : Spt (WordLocW width) × Spt (WordLocW width))
    (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (s : WordSemStateFiniteExact width C F) :
    (callEnv args1 ss (pushEnv envs handler (decClock s))).clock = s.clock - 1 := by
  rcases handler with _ | ⟨_, _, _, _⟩ <;> rfl

/-- After the callee body of a returning call has run (ending in `bodyPost`), the whole call
ends with at most `bodyPost.clock`. -/
theorem returningCallPostClock (n : List Nat) (names : WordLangCutsetsHOL)
    (retHandler : WordLangProgHOL (BitVec width)) (l1 l2 : Nat) (dest : Option Nat)
    (args : List Nat) (handler : Option (Nat × WordLangProgHOL (BitVec width) × Nat × Nat))
    (s sourcePost bodyPost : WordSemStateFiniteExact width C F)
    (result bodyResult : Option (WordSemResult width))
    (xs args1 : List (WordLocW width)) (prog : WordLangProgHOL (BitVec width)) (ss : Option Nat)
    (envs : Spt (WordLocW width) × Spt (WordLocW width))
    (hg : getVars args s = some xs) (hbad : ¬ wordSemBadDestArgs dest args = true)
    (hf : wordSemFindCode dest (wordSemAddRetLoc (some (n, names, retHandler, l1, l2)) xs)
      s.code s.stackSize = some (args1, prog, ss))
    (hnames : ¬ (sptDomainEmpty names.1 ∨ ¬ n.Nodup))
    (henvs : wordSemCutEnvs names s.locals = some envs) (hz : s.clock ≠ 0)
    (bodyRun : evaluate prog (callEnv args1 ss (pushEnv envs handler (decClock s))) =
      (bodyResult, bodyPost))
    (execution : evaluate (.call (some (n, names, retHandler, l1, l2)) dest args handler) s =
      (result, sourcePost)) :
    sourcePost.clock ≤ bodyPost.clock := by
  have ht := (evaluate_def_rebound (width := width) (C := C) (F := F)).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  rw [ht] at execution
  simp only [hg, hbad, Bool.false_eq_true, if_false, hf, hnames, henvs, hz] at execution
  rw [bodyRun] at execution
  rcases bodyResult with _ | ⟨x, ys⟩ | ⟨x, y⟩ | k | k | _ | _ | _ | _
  · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl
  · simp only at execution
    split at execution
    · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl
    · split at execution
      · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl
      · rename_i popped hp
        have pc := (popEnvConst _ _ hp).1
        split at execution
        · have := (evaluate_clock _ _ _ _ execution).1
          change sourcePost.clock ≤ popped.clock at this
          omega
        · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact pc.le
  · simp only at execution
    rcases handler with _ | ⟨n', hprog, l1', l2'⟩
    · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl
    · simp only at execution
      split at execution
      · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl
      · split at execution
        · exact (evaluate_clock _ _ _ _ execution).1
        · obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl
  all_goals (obtain ⟨-, rfl⟩ := Prod.mk.inj execution; exact le_rfl)

end

end InitECandidate.Solver.Compiler.WordToStack
