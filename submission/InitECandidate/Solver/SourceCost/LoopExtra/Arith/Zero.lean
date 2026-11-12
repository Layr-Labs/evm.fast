import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Recog

/-!
# Zero / nonzero propagation

A small abstract interpretation over locals: a local is known to hold an all-zero value
(`Fact.zero`) or a nonzero word (`Fact.nz`). `zE` evaluates expressions abstractly; it
knows, e.g., that a product with a zero factor or a conjunction with a zero operand is
zero, and decides `==` / `!=` between known facts.
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type}

inductive Fact where
  | zero
  | nz
  deriving DecidableEq, Repr

mutual
def zeroV : ValueHOL width → Bool
  | .val (.word w) => decide (w = 0)
  | .rStruct vs => zeroVL vs
  | .nStruct _ _ => false
def zeroVL : List (ValueHOL width) → Bool
  | [] => true
  | v :: vs => zeroV v && zeroVL vs
end

def FactHolds : Fact → ValueHOL width → Prop
  | .zero, v => zeroV v = true
  | .nz, v => ∃ w, v = .val (.word w) ∧ w ≠ 0

def flipF : Fact → Fact
  | .zero => .nz
  | .nz => .zero

/-- `a == b` from facts about `a` and `b`. -/
def zCmpEq : Option Fact → Option Fact → Option Fact
  | some .zero, some .zero => some .nz
  | some .zero, some .nz => some .zero
  | some .nz, some .zero => some .zero
  | _, _ => none

def zConst (w : BitVec width) : Fact := if w = 0 then .zero else .nz

mutual
def zE (F : List (MlS × Fact)) : ExpHOL width → Option Fact
  | .const w => some (zConst w)
  | .var .local z => F.lookup z
  | .rfield _ e => if zE F e = some .zero then some .zero else none
  | .rstruct es => if zEAll F es then some .zero else none
  | .op .and es => if zEAny F es then some .zero else none
  | .op _ es => if zEAll F es then some .zero else none
  | .panop _ es => if zEAny F es then some .zero else none
  | .cmp .equal a b => zCmpEq (zE F a) (zE F b)
  | .cmp .notEqual a b => (zCmpEq (zE F a) (zE F b)).map flipF
  | .shift _ a _ => if zE F a = some .zero then some .zero else none
  | _ => none
def zEAll (F : List (MlS × Fact)) : List (ExpHOL width) → Bool
  | [] => true
  | e :: es => (zE F e == some .zero) && zEAll F es
def zEAny (F : List (MlS × Fact)) : List (ExpHOL width) → Bool
  | [] => false
  | e :: es => (zE F e == some .zero) || zEAny F es
end

/-! ## Facts about values and words -/

theorem zeroVL_iff : ∀ vs : List (ValueHOL width), zeroVL vs = true ↔ ∀ v ∈ vs, zeroV v = true
  | [] => by simp [zeroVL]
  | v :: vs => by simp [zeroVL, zeroVL_iff vs]

theorem zeroV_word {v : ValueHOL width} (h : zeroV v = true) (hw : valueIsWord v = true) :
    valueWord v = 0 := by
  rcases v with ⟨⟨w⟩⟩ | _ | _
  · simpa [zeroV, valueWord] using h
  · simp [valueIsWord] at hw
  · simp [valueIsWord] at hw

theorem zeroV_eq {v : ValueHOL width} {w : BitVec width} (h : zeroV v = true)
    (hv : v = .val (.word w)) : w = 0 := by
  subst hv; simpa [zeroV] using h

theorem foldr_and_zero : ∀ (ws : List (BitVec width)) (init : BitVec width), (0 : BitVec width) ∈ ws →
    ws.foldr (fun l r => AndOp.and l r) init = 0
  | [], _, h => by simp at h
  | w :: ws, init, h => by
      simp only [List.foldr_cons]
      rcases List.mem_cons.mp h with rfl | h
      · show (0 : BitVec width) &&& _ = 0
        simp
      · rw [foldr_and_zero ws init h]
        show w &&& 0 = 0
        simp

theorem foldr_zero_of (f : BitVec width → BitVec width → BitVec width) (hf : ∀ a, f 0 a = a) :
    ∀ ws : List (BitVec width), (∀ w ∈ ws, w = 0) → ws.foldr f 0 = 0
  | [], _ => rfl
  | w :: ws, h => by
      simp only [List.foldr_cons]
      rw [h w List.mem_cons_self, foldr_zero_of f hf ws (fun w hw => h w (List.mem_cons_of_mem _ hw)),
        hf]

theorem wordOp_all_zero (o : BinOp) (ws : List (BitVec width)) (h : ∀ w ∈ ws, w = 0)
    {r : BitVec width} (hr : wordOpHOL o ws = some r) (ho : o ≠ .and) : r = 0 := by
  unfold wordOpHOL wordOp at hr
  cases o with
  | and => exact absurd rfl ho
  | add =>
      simp only [Option.some.injEq] at hr; subst hr
      exact foldr_zero_of _ (fun a => by simp) ws h
  | or =>
      simp only [Option.some.injEq] at hr; subst hr
      exact foldr_zero_of _ (fun a => by show 0 ||| a = a; simp) ws h
  | xor =>
      simp only [Option.some.injEq] at hr; subst hr
      exact foldr_zero_of _ (fun a => by show 0 ^^^ a = a; simp) ws h
  | sub =>
      rcases ws with _ | ⟨a, _ | ⟨b, _ | ⟨c, ws⟩⟩⟩
      · simp at hr
      · simp at hr
      · simp only [Option.some.injEq] at hr; subst hr
        rw [h a (by simp), h b (by simp)]; simp
      · simp at hr

theorem rotateRight_zero (n : Nat) : (0#width).rotateRight n = 0#width := by
  apply BitVec.eq_of_getLsbD_eq
  intro i
  simp [BitVec.getLsbD_rotateRight]

theorem wordShift_zero (o : Shift) (n : Nat) {r : BitVec width}
    (hr : wordShiftHOL o (0 : BitVec width) n = some r) : r = 0 := by
  unfold wordShiftHOL at hr
  split at hr
  · cases hr
  · cases o <;> simp only [Option.some.injEq] at hr <;> subst hr <;> simp [rotateRight_zero]

theorem one_ne_zero' : (1#width) ≠ 0#width := by
  intro h
  have := congrArg BitVec.toNat h
  simp only [BitVec.toNat_ofNat, Nat.zero_mod] at this
  have hp : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
  rw [Nat.mod_eq_of_lt hp] at this
  cases this

theorem factHolds_word {f : Fact} {w : BitVec width} : FactHolds f (.val (.word w)) ↔
    (f = .zero ∧ w = 0) ∨ (f = .nz ∧ w ≠ 0) := by
  cases f <;> simp [FactHolds, zeroV]

theorem zCmpEq_sound {fa fb f : Fact} {a b : BitVec width}
    (h : zCmpEq (some fa) (some fb) = some f) (ha : FactHolds fa (.val (.word a)))
    (hb : FactHolds fb (.val (.word b))) :
    FactHolds f (.val (.word (if wordCmpHOL .equal a b then 1#width else 0#width))) ∧
    FactHolds (flipF f) (.val (.word (if wordCmpHOL .notEqual a b then 1#width else 0#width))) := by
  rw [factHolds_word] at ha hb
  cases fa <;> cases fb <;> simp only [zCmpEq, Option.some.injEq, reduceCtorEq] at h <;> subst h
  · obtain ⟨-, rfl⟩ := ha.resolve_right (by simp)
    obtain ⟨-, rfl⟩ := hb.resolve_right (by simp)
    simp [wordCmpHOL, FactHolds, flipF, zeroV, NeZero.ne width]
  · obtain ⟨-, rfl⟩ := ha.resolve_right (by simp)
    obtain ⟨-, hb⟩ := hb.resolve_left (by simp)
    have : (0#width == b) = false := by simpa using (Ne.symm hb)
    simp [wordCmpHOL, FactHolds, flipF, zeroV, this, NeZero.ne width]
  · obtain ⟨-, ha⟩ := ha.resolve_left (by simp)
    obtain ⟨-, rfl⟩ := hb.resolve_right (by simp)
    have : (a == 0#width) = false := by simpa using ha
    simp [wordCmpHOL, FactHolds, flipF, zeroV, this, NeZero.ne width]

section
variable (F : List (MlS × Fact)) (s : PanSemStateExact width σ) [DecidablePred s.memaddrs]
  (hF : ∀ z f, F.lookup z = some f → ∃ v, s.locals z = some v ∧ FactHolds f v)
include hF

mutual
theorem zE_sound : ∀ (e : ExpHOL width) (f : Fact) (v : ValueHOL width),
    zE F e = some f → evalHOLExact s e = some v → FactHolds f v
  | .const w, f, v, h1, h2 => by
      simp only [zE, Option.some.injEq] at h1
      simp only [evalHOLExact, Option.some.injEq] at h2
      subst h1 h2
      unfold zConst
      split
      · rename_i h; subst h; simp [FactHolds, zeroV]
      · rename_i h; exact ⟨w, rfl, h⟩
  | .var .local z, f, v, h1, h2 => by
      simp only [zE] at h1
      simp only [evalHOLExact] at h2
      obtain ⟨v', hv', hf⟩ := hF z f h1
      rw [hv', Option.some.injEq] at h2
      subst h2; exact hf
  | .var .global _, f, v, h1, _ => by simp [zE] at h1
  | .rfield i e, f, v, h1, h2 => by
      simp only [zE] at h1
      split at h1
      · rename_i hz
        simp only [Option.some.injEq] at h1; subst h1
        simp only [evalHOLExact] at h2
        split at h2
        · rename_i vs hvs
          have := zE_sound e .zero _ hz hvs
          simp only [FactHolds, zeroV] at this
          exact (zeroVL_iff vs).mp this v (List.mem_of_getElem? h2)
        · cases h2
      · cases h1
  | .rstruct es, f, v, h1, h2 => by
      simp only [zE] at h1
      split at h1
      · rename_i hz
        simp only [Option.some.injEq] at h1; subst h1
        simp only [evalHOLExact] at h2
        obtain ⟨vs, hvs, rfl⟩ := Option.map_eq_some_iff.mp h2
        show zeroV (.rStruct vs) = true
        simp only [zeroV]
        exact (zeroVL_iff vs).mpr (zEAll_sound es vs hz hvs)
      · cases h1
  | .op o es, f, v, h1, h2 => by
      simp only [evalHOLExact] at h2
      split at h2
      · rename_i vs hvs
        split at h2
        · rename_i hw
          obtain ⟨r, hr, rfl⟩ := Option.map_eq_some_iff.mp h2
          have hw' : ∀ x ∈ vs, valueIsWord x = true := by simpa using hw
          cases o with
          | and =>
              simp only [zE] at h1
              split at h1
              · rename_i hz
                simp only [Option.some.injEq] at h1; subst h1
                obtain ⟨x, hx, hzx⟩ := zEAny_sound es vs hz hvs
                have h0 : (0 : BitVec width) ∈ vs.map valueWord := by
                  rw [← zeroV_word hzx (hw' x hx)]; exact List.mem_map_of_mem hx
                unfold wordOpHOL wordOp at hr
                simp only [Option.some.injEq] at hr; subst hr
                simp [FactHolds, zeroV, foldr_and_zero _ _ h0]
              · cases h1
          | _ =>
              simp only [zE] at h1
              split at h1
              · rename_i hz
                simp only [Option.some.injEq] at h1; subst h1
                have hall := zEAll_sound es vs hz hvs
                have h0 : ∀ w ∈ vs.map valueWord, w = 0 := by
                  intro w hw
                  obtain ⟨x, hx, rfl⟩ := List.mem_map.mp hw
                  exact zeroV_word (hall x hx) (hw' x hx)
                have := wordOp_all_zero _ _ h0 hr (by simp)
                subst this
                simp [FactHolds, zeroV]
              · cases h1
        · cases h2
      · cases h2
  | .panop o es, f, v, h1, h2 => by
      simp only [zE] at h1
      split at h1
      · rename_i hz
        simp only [Option.some.injEq] at h1; subst h1
        simp only [evalHOLExact] at h2
        split at h2
        · rename_i vs hvs
          split at h2
          · rename_i hw
            obtain ⟨r, hr, rfl⟩ := Option.map_eq_some_iff.mp h2
            have hw' : ∀ x ∈ vs, valueIsWord x = true := by simpa using hw
            obtain ⟨x, hx, hzx⟩ := zEAny_sound es vs hz hvs
            have h0 : (0 : BitVec width) ∈ vs.map valueWord := by
              rw [← zeroV_word hzx (hw' x hx)]; exact List.mem_map_of_mem hx
            cases o
            unfold panOpHOL at hr
            split at hr
            · rename_i a b hab
              simp only [Option.some.injEq] at hr; subst hr
              rw [hab] at h0
              simp only [List.mem_cons, List.not_mem_nil, or_false] at h0
              rcases h0 with h0 | h0 <;> rw [← h0] <;> simp [FactHolds, zeroV]
            · cases hr
          · cases h2
        · cases h2
      · cases h1
  | .cmp o a b, f, v, h1, h2 => by
      simp only [evalHOLExact] at h2
      split at h2
      · rename_i la ra hla hra
        simp only [Option.some.injEq] at h2; subst h2
        cases o with
        | equal =>
            simp only [zE] at h1
            cases hza : zE F a with
            | none => rw [hza] at h1; simp [zCmpEq] at h1
            | some fa =>
              cases hzb : zE F b with
              | none => rw [hza, hzb] at h1; cases fa <;> simp [zCmpEq] at h1
              | some fb =>
                rw [hza, hzb] at h1
                exact (zCmpEq_sound h1 (zE_sound a fa _ hza hla) (zE_sound b fb _ hzb hra)).1
        | notEqual =>
            simp only [zE] at h1
            cases hza : zE F a with
            | none => rw [hza] at h1; simp [zCmpEq] at h1
            | some fa =>
              cases hzb : zE F b with
              | none => rw [hza, hzb] at h1; cases fa <;> simp [zCmpEq] at h1
              | some fb =>
                rw [hza, hzb] at h1
                obtain ⟨f0, hf0, rfl⟩ := Option.map_eq_some_iff.mp h1
                exact (zCmpEq_sound hf0 (zE_sound a fa _ hza hla) (zE_sound b fb _ hzb hra)).2
        | _ => simp [zE] at h1
      · cases h2
  | .shift o a b, f, v, h1, h2 => by
      simp only [zE] at h1
      split at h1
      · rename_i hz
        simp only [Option.some.injEq] at h1; subst h1
        simp only [evalHOLExact] at h2
        split at h2
        · rename_i la ra hla hra
          obtain ⟨r, hr, rfl⟩ := Option.map_eq_some_iff.mp h2
          have := zE_sound a .zero _ hz hla
          simp only [FactHolds, zeroV, decide_eq_true_eq] at this
          subst this
          rw [wordShift_zero o _ hr]
          simp [FactHolds, zeroV]
        · cases h2
      · cases h1
  | .nstruct _ _, f, v, h1, _ | .nfield _ _, f, v, h1, _ | .load _ _, f, v, h1, _
  | .load32 _, f, v, h1, _ | .loadByte _, f, v, h1, _ | .baseAddr, f, v, h1, _
  | .topAddr, f, v, h1, _ | .bytesInWord, f, v, h1, _ => by simp [zE] at h1
theorem zEAll_sound : ∀ (es : List (ExpHOL width)) (vs : List (ValueHOL width)),
    zEAll F es = true → evalListHOLExact s es = some vs → ∀ v ∈ vs, zeroV v = true
  | [], vs, _, h2 => by
      simp only [evalListHOLExact, Option.some.injEq] at h2; subst h2; simp
  | e :: es, vs, h1, h2 => by
      simp only [zEAll, Bool.and_eq_true, beq_iff_eq] at h1
      simp only [evalListHOLExact] at h2
      split at h2
      · rename_i v vs' hv hvs
        simp only [Option.some.injEq] at h2; subst h2
        intro x hx
        rcases List.mem_cons.mp hx with rfl | hx
        · exact zE_sound e .zero x h1.1 hv
        · exact zEAll_sound es vs' h1.2 hvs x hx
      · cases h2
theorem zEAny_sound : ∀ (es : List (ExpHOL width)) (vs : List (ValueHOL width)),
    zEAny F es = true → evalListHOLExact s es = some vs → ∃ v ∈ vs, zeroV v = true
  | [], _, h1, _ => by simp [zEAny] at h1
  | e :: es, vs, h1, h2 => by
      simp only [zEAny, Bool.or_eq_true, beq_iff_eq] at h1
      simp only [evalListHOLExact] at h2
      split at h2
      · rename_i v vs' hv hvs
        simp only [Option.some.injEq] at h2; subst h2
        rcases h1 with h1 | h1
        · exact ⟨v, List.mem_cons_self, zE_sound e .zero v h1 hv⟩
        · obtain ⟨x, hx, hz⟩ := zEAny_sound es vs' h1 hvs
          exact ⟨x, List.mem_cons_of_mem _ hx, hz⟩
      · cases h2
end
end

end InitECandidate.Solver.SourceCost.Arith
