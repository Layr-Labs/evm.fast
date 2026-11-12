import InitECandidate.Solver.Spec.U256

/-!
# Straight-line word code

Exact evaluation of straight-line code over word locals, for the large unrolled bodies
(`fq_mul`): instead of stepping through hundreds of statements with `simp`, the code is
read as a list of assignments `List Asg` and run by a Lean interpreter `runL` on an
environment `Env = MlS → BitVec 64`.

* `chkE W S e`: `e` uses only constants, word locals in `W`, limbs `.i` (`i < 4`) of
  4-limb struct locals in `S`, `op` (`and`, `add`, `or`, `xor`, binary `sub`), binary
  `panop mul`, and shifts by a constant `< 64`. `evW env senv e` is its value.
* `Agree s env senv W S`: the locals of `s` hold `env n` for `n ∈ W` and the struct
  `wv (senv n)` (4 limbs) for `n ∈ S`.
* `ev_evW`: under `Agree` a checked expression evaluates to `evW`.
* `eval_mkChain`: a checked chain of local assignments `x₁ = e₁; ...; xₙ = eₙ; rest`
  runs as `rest` from a state agreeing with `runL senv env [(x₁, e₁), ...]`.
* `eval_mkDecs`: the same for nested declarations `var x₁ = e₁ { ... }` (result only).
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev Env := MlS → BitVec 64
abbrev SEnv := MlS → List (BitVec 64)
abbrev Asg := MlS × ExpHOL 64

/-- Operators and arities on which `wordOpHOL` is defined. -/
def opOk : BinOp → Nat → Bool
  | .and, _ => true
  | .add, _ => true
  | .or, _ => true
  | .xor, _ => true
  | .sub, n => n == 2

mutual
/-- Checked word expressions. -/
def chkE (W S : List MlS) : ExpHOL 64 → Bool
  | .const _ => true
  | .var .local n => W.contains n
  | .rfield i (.var .local n) => S.contains n && decide (i < 4)
  | .op o es => chkEs W S es && opOk o es.length
  | .panop .mul es => chkEs W S es && es.length == 2
  | .shift _ a (.const k) => chkE W S a && decide (k.toNat < 64)
  | _ => false

def chkEs (W S : List MlS) : List (ExpHOL 64) → Bool
  | [] => true
  | e :: es => chkE W S e && chkEs W S es
end

mutual
/-- The value of a checked word expression. -/
def evW (env : Env) (senv : SEnv) : ExpHOL 64 → BitVec 64
  | .const w => w
  | .var .local n => env n
  | .rfield i (.var .local n) => (senv n).getD i 0
  | .op o es => (wordOpHOL o (evWs env senv es)).getD 0
  | .panop o es => (panOpHOL o (evWs env senv es)).getD 0
  | .shift o a (.const k) => (wordShiftHOL o (evW env senv a) k.toNat).getD 0
  | _ => 0

def evWs (env : Env) (senv : SEnv) : List (ExpHOL 64) → List (BitVec 64)
  | [] => []
  | e :: es => evW env senv e :: evWs env senv es
end

variable {σ : Type}

/-- The locals of `s` agree with the word environment on `W` and the struct environment
on `S`. -/
def Agree (s : PanSemStateFiniteExact 64 σ) (env : Env) (senv : SEnv) (W S : List MlS) : Prop :=
  (∀ n ∈ W, s.locals.lookup n = some (.val (.word (env n)))) ∧
    (∀ n ∈ S, s.locals.lookup n = some (wv (senv n)) ∧ (senv n).length = 4)

theorem Agree.mono {s : PanSemStateFiniteExact 64 σ} {env : Env} {senv : SEnv}
    {W W' S : List MlS} (h : Agree s env senv W S) (hW : ∀ n ∈ W', n ∈ W) :
    Agree s env senv W' S :=
  ⟨fun n hn => h.1 n (hW n hn), h.2⟩

theorem opOk_some {o : BinOp} {xs : List (BitVec 64)} (h : opOk o xs.length = true) :
    ∃ w, wordOpHOL o xs = some w := by
  cases o <;> simp [opOk] at h
  all_goals first
    | exact ⟨_, rfl⟩
    | (match xs, h with
       | [a, b], _ => exact ⟨a - b, rfl⟩)

theorem evWs_length (env : Env) (senv : SEnv) :
    ∀ es : List (ExpHOL 64), (evWs env senv es).length = es.length
  | [] => rfl
  | _ :: es => by simp [evWs, evWs_length env senv es]

theorem shift_some (o : Shift) (x : BitVec 64) {k : Nat} (hk : k < 64) :
    ∃ w, wordShiftHOL o x k = some w := by
  unfold wordShiftHOL
  rw [if_neg (by omega)]
  cases o <;> exact ⟨_, rfl⟩

section ev
variable {s : PanSemStateFiniteExact 64 σ} {env : Env} {senv : SEnv} {W S : List MlS}

mutual
theorem ev_evW (hA : Agree s env senv W S) :
    ∀ e : ExpHOL 64, chkE W S e = true → ev s e = some (.val (.word (evW env senv e)))
  | .const w, _ => rfl
  | .var .local n, h => by
      simp only [chkE, List.contains_iff_mem] at h
      rw [ev_var_local, hA.1 n h]
      rfl
  | .rfield i (.var .local n), h => by
      simp only [chkE, Bool.and_eq_true, List.contains_iff_mem, decide_eq_true_eq] at h
      obtain ⟨hl, hlen⟩ := hA.2 n h.1
      rw [ev_rfield_wv (by rw [ev_var_local]; exact hl) (by omega)]
      simp only [evW]
      rw [getD_eq (by omega)]
  | .op o es, h => by
      simp only [chkE, Bool.and_eq_true] at h
      have hs := evs_evWs hA es h.1
      rw [ev_op hs]
      obtain ⟨w, hw⟩ := opOk_some (o := o) (xs := evWs env senv es)
        (by rw [evWs_length]; exact h.2)
      simp only [evW, hw, Option.map_some, Option.getD_some]
  | .panop .mul es, h => by
      simp only [chkE, Bool.and_eq_true, beq_iff_eq] at h
      have hs := evs_evWs hA es h.1
      simp only [ev, evs, evalHOLExact] at hs ⊢
      rw [hs]
      dsimp only
      have hall : ((evWs env senv es).map fun w => (ValueHOL.val (HolWordLab.word w) : ValueHOL 64)).all
          valueIsWord = true := by simp [valueIsWord]
      rw [if_pos hall]
      have hlen := evWs_length env senv es
      rw [h.2] at hlen
      match hm : evWs env senv es, hlen with
      | [x, y], _ =>
          simp only [List.map_cons, List.map_nil, valueWord, evW, hm, panOpHOL, Option.map_some,
            Option.getD_some]
  | .shift o a (.const k), h => by
      simp only [chkE, Bool.and_eq_true, decide_eq_true_eq] at h
      have ha := ev_evW hA a h.1
      rw [ev_shift ha (ev_const k)]
      obtain ⟨w, hw⟩ := shift_some o (evW env senv a) h.2
      simp only [evW, hw, Option.map_some, Option.getD_some]
  | .var .global _, h => by simp [chkE] at h
  | .rstruct _, h => by simp [chkE] at h
  | .rfield _ (.const _), h => by simp [chkE] at h
  | .rfield _ (.var .global _), h => by simp [chkE] at h
  | .rfield _ (.rstruct _), h => by simp [chkE] at h
  | .rfield _ (.rfield _ _), h => by simp [chkE] at h
  | .rfield _ (.nstruct _ _), h => by simp [chkE] at h
  | .rfield _ (.nfield _ _), h => by simp [chkE] at h
  | .rfield _ (.load _ _), h => by simp [chkE] at h
  | .rfield _ (.load32 _), h => by simp [chkE] at h
  | .rfield _ (.loadByte _), h => by simp [chkE] at h
  | .rfield _ (.op _ _), h => by simp [chkE] at h
  | .rfield _ (.panop _ _), h => by simp [chkE] at h
  | .rfield _ (.cmp _ _ _), h => by simp [chkE] at h
  | .rfield _ (.shift _ _ _), h => by simp [chkE] at h
  | .rfield _ .baseAddr, h => by simp [chkE] at h
  | .rfield _ .topAddr, h => by simp [chkE] at h
  | .rfield _ .bytesInWord, h => by simp [chkE] at h
  | .nstruct _ _, h => by simp [chkE] at h
  | .nfield _ _, h => by simp [chkE] at h
  | .load _ _, h => by simp [chkE] at h
  | .load32 _, h => by simp [chkE] at h
  | .loadByte _, h => by simp [chkE] at h
  | .cmp _ _ _, h => by simp [chkE] at h
  | .shift _ _ (.var _ _), h => by simp [chkE] at h
  | .shift _ _ (.rstruct _), h => by simp [chkE] at h
  | .shift _ _ (.rfield _ _), h => by simp [chkE] at h
  | .shift _ _ (.nstruct _ _), h => by simp [chkE] at h
  | .shift _ _ (.nfield _ _), h => by simp [chkE] at h
  | .shift _ _ (.load _ _), h => by simp [chkE] at h
  | .shift _ _ (.load32 _), h => by simp [chkE] at h
  | .shift _ _ (.loadByte _), h => by simp [chkE] at h
  | .shift _ _ (.op _ _), h => by simp [chkE] at h
  | .shift _ _ (.panop _ _), h => by simp [chkE] at h
  | .shift _ _ (.cmp _ _ _), h => by simp [chkE] at h
  | .shift _ _ (.shift _ _ _), h => by simp [chkE] at h
  | .shift _ _ .baseAddr, h => by simp [chkE] at h
  | .shift _ _ .topAddr, h => by simp [chkE] at h
  | .shift _ _ .bytesInWord, h => by simp [chkE] at h
  | .baseAddr, h => by simp [chkE] at h
  | .topAddr, h => by simp [chkE] at h
  | .bytesInWord, h => by simp [chkE] at h

theorem evs_evWs (hA : Agree s env senv W S) :
    ∀ es : List (ExpHOL 64), chkEs W S es = true →
      evs s es = some ((evWs env senv es).map fun w => .val (.word w))
  | [], _ => rfl
  | e :: es, h => by
      simp only [chkEs, Bool.and_eq_true] at h
      exact evs_cons (ev_evW hA e h.1) (evs_evWs hA es h.2)
end

end ev

/-! ## Chains of assignments and declarations -/

/-- Run a list of word assignments. -/
def runL (senv : SEnv) : Env → List Asg → Env
  | env, [] => env
  | env, (n, e) :: l => runL senv (Function.update env n (evW env senv e)) l

theorem runL_append (senv : SEnv) (env : Env) (l₁ l₂ : List Asg) :
    runL senv env (l₁ ++ l₂) = runL senv (runL senv env l₁) l₂ := by
  induction l₁ generalizing env with
  | nil => rfl
  | cons a l ih => obtain ⟨n, e⟩ := a; exact ih _

/-- `x₁ = e₁; ...; xₙ = eₙ; rest` -/
def mkChain : List Asg → ProgHOL 64 → ProgHOL 64
  | [], rest => rest
  | (n, e) :: l, rest => .seq (.assign .local n e) (mkChain l rest)

/-- `var x₁ = e₁ { ... var xₙ = eₙ { rest } }` (word declarations). -/
def mkDecs : List Asg → ProgHOL 64 → ProgHOL 64
  | [], rest => rest
  | (n, e) :: l, rest => .dec n .one e (mkDecs l rest)

def chkL (W S : List MlS) : List Asg → Bool
  | [] => true
  | (n, e) :: l => W.contains n && !(S.contains n) && chkE W S e && chkL W S l

def chkD (W S : List MlS) : List Asg → Bool
  | [] => true
  | (n, e) :: l => chkE W S e && !(S.contains n) && chkD (n :: W) S l

/-- The names a declaration list adds. -/
def declNames : List MlS → List Asg → List MlS
  | W, [] => W
  | W, (n, _) :: l => declNames (n :: W) l

theorem agree_update {s : PanSemStateFiniteExact 64 σ} {env : Env} {senv : SEnv}
    {W S : List MlS} (hA : Agree s env senv W S) {n : MlS} (hnS : n ∉ S) (w : BitVec 64) :
    Agree (setVarHOLFinite n (.val (.word w)) s) (Function.update env n w) senv (n :: W) S := by
  refine ⟨fun m hm => ?_, fun m hm => ?_⟩
  · by_cases hmn : m = n
    · subst hmn
      rw [lk_set_self, Function.update_self]
    · have hmW : m ∈ W := by
        rcases List.mem_cons.mp hm with h | h
        · exact absurd h hmn
        · exact h
      rw [lk_set_ne _ _ (Ne.symm hmn), Function.update_of_ne hmn]
      exact hA.1 m hmW
  · have hmn : m ≠ n := fun h => hnS (h ▸ hm)
    rw [lk_set_ne _ _ (Ne.symm hmn)]
    exact hA.2 m hm

theorem eval_mkChain {senv : SEnv} {W S : List MlS} (rest : ProgHOL 64) :
    ∀ (l : List Asg) (s : PanSemStateFiniteExact 64 σ) (env : Env), chkL W S l = true →
      Agree s env senv W S →
      ∃ s' : PanSemStateFiniteExact 64 σ, evaluateHOLFiniteState s (mkChain l rest) =
          evaluateHOLFiniteState s' rest ∧ Agree s' (runL senv env l) senv W S ∧
        s' = { s with locals := s'.locals }
  | [], s, env, _, hA => ⟨s, rfl, hA, rfl⟩
  | (n, e) :: l, s, env, h, hA => by
      simp only [chkL, Bool.and_eq_true, Bool.not_eq_true', List.contains_iff_mem] at h
      obtain ⟨⟨⟨hnW, hnS⟩, he⟩, hl⟩ := h
      have hnS' : n ∉ S := by simpa using hnS
      have hev := ev_evW hA e he
      have hvalid : isValidValueHOLFinite s .local n (.val (.word (evW env senv e))) = true := by
        rw [isValidValueHOLFinite_eq]
        simp only [isValidValueHOLExact, lookupKvarHOLExact]
        rw [hA.1 n hnW]
        dsimp only
        rw [shapeOf_val, shapeOf_val]
        exact (shapeEqHOL_eq_true _ _).mpr rfl
      have hasg := eval_assign_ok hev hvalid
      have hA' := (agree_update hA hnS' (evW env senv e)).mono (fun m hm => List.mem_cons_of_mem _ hm)
      obtain ⟨s', h1, h2, h3⟩ := eval_mkChain rest l _ _ hl hA'
      refine ⟨s', ?_, h2, ?_⟩
      · simp only [mkChain]
        rw [eval_seq_none (by rw [hasg]), hasg]
        exact h1
      · rw [h3]
        rfl

theorem eval_mkDecs {senv : SEnv} {S : List MlS} (rest : ProgHOL 64) :
    ∀ (l : List Asg) (W : List MlS) (s : PanSemStateFiniteExact 64 σ) (env : Env),
      chkD W S l = true → Agree s env senv W S →
      ∃ s' : PanSemStateFiniteExact 64 σ, (evaluateHOLFiniteState s (mkDecs l rest)).1 =
          (evaluateHOLFiniteState s' rest).1 ∧
        Agree s' (runL senv env l) senv (declNames W l) S ∧ s' = { s with locals := s'.locals }
  | [], W, s, env, _, hA => ⟨s, rfl, hA, rfl⟩
  | (n, e) :: l, W, s, env, h, hA => by
      simp only [chkD, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨⟨he, hnS⟩, hl⟩ := h
      have hnS' : n ∉ S := by simpa using hnS
      have hev := ev_evW hA e he
      have hdec := eval_dec_ok (n := n) (sh := .one) (b := mkDecs l rest) hev
        (by rw [shapeOf_val]; exact (shapeEqHOL_eq_true _ _).mpr rfl)
      obtain ⟨s', h1, h2, h3⟩ := eval_mkDecs rest l (n :: W) _ _ hl (agree_update hA hnS' _)
      refine ⟨s', ?_, h2, ?_⟩
      · simp only [mkDecs]
        rw [hdec]
        exact h1
      · rw [h3]
        rfl

end InitECandidate.Solver.Spec.Fq12
