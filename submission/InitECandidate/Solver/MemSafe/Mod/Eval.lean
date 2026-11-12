import InitECandidate.Solver.MemSafe.Mod.Kit

set_option autoImplicit false

/-!
# Evaluation helpers for the dynamic-size kit

* `W k = BitVec.ofNat 64 k`, `toNat_W`, `W_toNat`, `ev_addW`, `ev_mulW`, `ev_lsrW`, `ev_subW`;
* `LVs l m`: the locals `m` map the names of the association list `l` to the given words
  (`LVs.dec`: a new `var`; `LVs.set`: an assignment to the head).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

abbrev W (k : Nat) : BitVec 64 := BitVec.ofNat 64 k

theorem toNat_W {k : Nat} (h : k < 2 ^ 64) : (W k).toNat = k := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt h

theorem W_toNat (x : BitVec 64) : W x.toNat = x := by simp

theorem W_add (a b : Nat) : W a + W b = W (a + b) := by simp [BitVec.ofNat_add]

theorem W_mul (a b : Nat) : W a * W b = W (a * b) := by simp [BitVec.ofNat_mul]

theorem W_sub {a b : Nat} (h : b ≤ a) : W a - W b = W (a - b) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_sub, BitVec.toNat_ofNat, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  have h1 : (a - b) % 2 ^ 64 = (a - b) % 2 ^ 64 := rfl
  omega

theorem W_lsr {a : Nat} (k : Nat) (h : a < 2 ^ 64) : W a >>> k = W (a / 2 ^ k) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ushiftRight, toNat_W h, Nat.shiftRight_eq_div_pow, BitVec.toNat_ofNat]
  exact (Nat.mod_eq_of_lt (lt_of_le_of_lt (Nat.div_le_self _ _) h)).symm

section ev
variable {s : State σ}

theorem ev_addW {a b : ExpHOL 64} {x y : Nat} (ha : ev s a = some (.val (.word (W x))))
    (hb : ev s b = some (.val (.word (W y)))) :
    ev s (.op .add [a, b]) = some (.val (.word (W (x + y)))) := by
  rw [ev_add2 ha hb, W_add]

theorem ev_mulW {a b : ExpHOL 64} {x y : Nat} (ha : ev s a = some (.val (.word (W x))))
    (hb : ev s b = some (.val (.word (W y)))) :
    ev s (.panop .mul [a, b]) = some (.val (.word (W (x * y)))) := by
  rw [ev_mul2 ha hb, W_mul]

theorem ev_subW {a b : ExpHOL 64} {x y : Nat} (hxy : y ≤ x)
    (ha : ev s a = some (.val (.word (W x)))) (hb : ev s b = some (.val (.word (W y)))) :
    ev s (.op .sub [a, b]) = some (.val (.word (W (x - y)))) := by
  rw [ev_sub2 ha hb, W_sub hxy]

theorem ev_lsrW {a : ExpHOL 64} {x : Nat} (k : Nat) (hk : k < 64) (hx : x < 2 ^ 64)
    (ha : ev s a = some (.val (.word (W x)))) :
    ev s (.shift .lsr a (cw k)) = some (.val (.word (W (x / 2 ^ k)))) := by
  rw [ev_shift ha (ev_cw s k)]
  have hk' : (BitVec.ofNat 64 k).toNat = k := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  rw [hk']
  simp only [Flapjack.wordShiftHOL]
  rw [if_neg (by omega), W_lsr k hx]
  rfl

end ev

/-! ## Locals as an association list -/

def LVs (l : List (String × BitVec 64)) (m : LocalsH) : Prop :=
  ∀ p ∈ l, m.lookup (nm p.1) = some (.val (.word p.2))

theorem LVs.getE {l : List (String × BitVec 64)} {s : State σ} (h : LVs l s.locals) {x : String}
    {w : BitVec 64} (hx : (x, w) ∈ l) : ev s (lv (nm x)) = some (.val (.word w)) := h _ hx

theorem LVs.getW {l : List (String × BitVec 64)} {s : State σ} (h : LVs l s.locals) {x : String}
    {k : Nat} (hx : (x, W k) ∈ l) : ev s (lv (nm x)) = some (.val (.word (W k))) := h _ hx

/-- A new `var x = w; ...`. -/
theorem LVs.dec {l : List (String × BitVec 64)} {s st : State σ} (h : LVs l s.locals) (x : String)
    (w : BitVec 64) (hx : ∀ p ∈ l, nm p.1 ≠ nm x) :
    LVs ((x, w) :: l) (setVarHOLFinite (nm x) (.val (.word w)) { st with locals := s.locals }).locals := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (fun e => hx p hp e.symm)]
    exact h p hp

/-- An assignment to the head variable. -/
theorem LVs.set {l : List (String × BitVec 64)} {s : State σ} {x : String} {w w' : BitVec 64}
    (h : LVs ((x, w) :: l) s.locals) (hx : ∀ p ∈ l, nm p.1 ≠ nm x) (v : ValueHOL 64)
    (hv : v = .val (.word w')) :
    LVs ((x, w') :: l) (setVarHOLFinite (nm x) v s).locals := by
  subst hv
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (fun e => hx p hp e.symm)]
    exact h p (List.mem_cons_of_mem _ hp)

theorem LVs.mono {l l' : List (String × BitVec 64)} {m : LocalsH} (h : LVs l m)
    (hs : ∀ p ∈ l', p ∈ l) : LVs l' m := fun p hp => h p (hs p hp)

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.LVs.dec
#print axioms InitECandidate.Solver.MemSafe.Mod.ev_lsrW
