import InitECandidate.Solver.MemSafe.Struct.Ev

/-!
# Evaluation helpers for the structure proofs

Code lookup of nullary functions, `G` across states that differ only outside memory/globals,
expression evaluation of `ev`-relative loads, one-word updates (`upd`, `store_word`) and the
frame of multi-word stores (`stores_frame`).
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type}

/-! ## Code lookup -/

theorem lookupCode_zero {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {bd : ProgHOL 64} {rsh : ShapeHOL} (hc : code f = some ([], bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ vs = [] := by
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
      | [], _ => exact ⟨rfl, rfl, rfl⟩
    · simp at hx

/-! ## `G` and the parts of the state it ignores -/

theorem G_congr {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hbe : t.be = s.be) (h : G C H Γ s) : G C H Γ t := by
  have hpt : ptrsOf t = ptrsOf s := by unfold ptrsOf gword; rw [hg]
  refine G_frame hH h hpt (fun g _ _ => by unfold gword; rw [hg]) (fun g _ => by rw [hg]) hd hbe
    (fun a _ => by rw [hm])

theorem ptrsOf_congr {s t : State σ} (h : t.globals = s.globals) : ptrsOf t = ptrsOf s := by
  unfold ptrsOf gword; rw [h]

/-! ## Expressions -/

theorem ev_lw' {s : State σ} {x : MlS} {v : ValueHOL 64} (h : s.locals.lookup x = some v) :
    ev s (lv x) = some v := h

theorem ev_lv_set (s : State σ) (n : MlS) (v : ValueHOL 64) :
    ev (setVarHOLFinite n v s) (lv n) = some v := lk_set_self s n v

theorem ev_lv_set_ne (s : State σ) {n q : MlS} (v : ValueHOL 64) (h : n ≠ q) :
    ev (setVarHOLFinite n v s) (lv q) = ev s (lv q) := lk_set_ne s v h

theorem ev_evA {s : State σ} {E : BitVec 64}
    (h : s.globals.lookup gEv = some (.val (.word E))) (k : Nat) :
    ev s (evA k) = some (.val (.word (E + BitVec.ofNat 64 k))) :=
  ev_add2 h (ev_cw s k)

/-- A one-word load: its address and value. -/
theorem ev_load1_inv {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) :
    ∃ w, ev s a = some (.val (.word w)) ∧ s.memaddrs w ∧ v = .val (.word (rd s.memory w)) := by
  obtain ⟨w, hw, hd, rfl⟩ := ev_load_one h
  exact ⟨w, hw, hd, by rw [← mem_word]⟩

theorem ev_evL {s : State σ} {E : BitVec 64} (h : s.globals.lookup gEv = some (.val (.word E)))
    {k : Nat} {v : ValueHOL 64} (hv : ev s (evL k) = some v) :
    v = .val (.word (rd s.memory (E + BitVec.ofNat 64 k))) ∧ s.memaddrs (E + BitVec.ofNat 64 k) := by
  obtain ⟨w, hw, hd, rfl⟩ := ev_load1_inv hv
  rw [ev_evA h] at hw
  cases hw
  exact ⟨rfl, hd⟩

theorem ev_evL_of {s : State σ} {E : BitVec 64} (h : s.globals.lookup gEv = some (.val (.word E)))
    {k : Nat} (hd : s.memaddrs (E + BitVec.ofNat 64 k)) :
    ev s (evL k) = some (.val (.word (rd s.memory (E + BitVec.ofNat 64 k)))) := by
  show ev s (.load .one (evA k)) = _
  rw [ev_load_one_of (ev_evA h k) hd, mem_word s.memory (E + BitVec.ofNat 64 k)]

theorem cmp_eq_true {x y : BitVec 64} (h : wordCmpHOL .equal x y = true) : x = y := by
  simpa [wordCmpHOL] using h

theorem cmp_eq_false {x y : BitVec 64} (h : wordCmpHOL .equal x y = false) : x ≠ y := by
  simpa [wordCmpHOL] using h

theorem cmp_ne_true {x y : BitVec 64} (h : wordCmpHOL .notEqual x y = true) : x ≠ y := by
  simpa [wordCmpHOL] using h

theorem cmp_ne_false {x y : BitVec 64} (h : wordCmpHOL .notEqual x y = false) : x = y := by
  simpa [wordCmpHOL] using h

theorem cmp_lower_true {x y : BitVec 64} (h : wordCmpHOL .lower x y = true) :
    x.toNat < y.toNat := by
  simpa [wordCmpHOL, BitVec.lt_def] using h

theorem cmp_lower_false {x y : BitVec 64} (h : wordCmpHOL .lower x y = false) :
    y.toNat ≤ x.toNat := by
  simp only [wordCmpHOL, BitVec.lt_def, decide_eq_false_iff_not, Nat.not_lt] at h
  exact h

theorem cmp_notLower_true {x y : BitVec 64} (h : wordCmpHOL .notLower x y = true) :
    y.toNat ≤ x.toNat := by
  simp only [wordCmpHOL, BitVec.lt_def, Bool.not_eq_true',
    decide_eq_false_iff_not, Nat.not_lt] at h
  exact h

theorem cmp_notLower_false {x y : BitVec 64} (h : wordCmpHOL .notLower x y = false) :
    x.toNat < y.toNat := by
  simp only [wordCmpHOL, BitVec.lt_def, decide_not, Bool.not_eq_false', decide_eq_true_eq] at h
  exact h

/-! ## Stores -/

/-- Memory after a one-word store of `x` at `a`. -/
def upd (m : Mem) (a x : BitVec 64) : Mem := fun c => if c = a then .word x else m c

theorem rd_upd (m : Mem) (a x b : BitVec 64) : rd (upd m a x) b = if b = a then x else rd m b := by
  by_cases h : b = a <;> simp [upd, rd, h]

theorem rd_upd_self (m : Mem) (a x : BitVec 64) : rd (upd m a x) a = x := by
  rw [rd_upd, if_pos rfl]

theorem rd_upd_ne {m : Mem} {a x b : BitVec 64} (h : b ≠ a) : rd (upd m a x) b = rd m b := by
  rw [rd_upd, if_neg h]

theorem upd_ne {m : Mem} {a x b : BitVec 64} (h : b ≠ a) : upd m a x b = m b := by
  unfold upd; rw [if_neg h]

theorem modOnly_upd (m : Mem) (a x : BitVec 64) : ModifiesOnly (· = a) m (upd m a x) :=
  fun _ h => upd_ne h

theorem store_word {d : BitVec 64 → Prop} {inst : DecidablePred d} {m mem : Mem} {a x : BitVec 64}
    (h : @panMemStoresHOL 64 _ a (flattenHOL (.val (.word x))) d inst m = some mem) :
    mem = upd m a x := by
  rw [flattenHOL] at h
  simp only [panMemStoresHOL] at h
  split at h
  · rename_i updated hu
    simp only [Option.some.injEq] at h
    subst h
    unfold panMemStoreHOL at hu
    split at hu
    · simp only [Option.some.injEq] at hu
      rw [← hu]
      rfl
    · simp at hu
  · simp at h

/-- A multi-word store changes only the cells `a + 8 i`, `i < n`. -/
theorem stores_frame {d : BitVec 64 → Prop} {inst : DecidablePred d} :
    ∀ (vs : List (HolWordLab 64)) (a : BitVec 64) (m mem : Mem),
      @panMemStoresHOL 64 _ a vs d inst m = some mem →
      ModifiesOnly (fun c => ∃ i < vs.length, c = a + BitVec.ofNat 64 (8 * i)) m mem
  | [], a, m, mem, h => by
      simp only [panMemStoresHOL, Option.some.injEq] at h
      subst h
      intro c _; rfl
  | v :: vs, a, m, mem, h => by
      simp only [panMemStoresHOL] at h
      split at h
      · rename_i upd' hu
        have ih := stores_frame vs _ _ _ h
        unfold panMemStoreHOL at hu
        split at hu
        · simp only [Option.some.injEq] at hu
          subst hu
          intro c hc
          rw [ih c ?_]
          · show (if c = a then v else m c) = m c
            rw [if_neg]
            intro hca
            exact hc ⟨0, by simp, by simp [hca]⟩
          · rintro ⟨i, hi, rfl⟩
            refine hc ⟨i + 1, by simp; omega, ?_⟩
            rw [BitVec.add_assoc]
            congr 1
            apply BitVec.eq_of_toNat_eq
            simp only [BitVec.toNat_add, BitVec.toNat_ofNat, panBytesInWord]
            rw [Nat.add_mod_mod, Nat.mul_succ, Nat.add_comm]
        · simp at hu
      · simp at h

theorem flattenHOL_wv (ws : List (BitVec 64)) :
    flattenHOL (wv ws) = ws.map HolWordLab.word := by
  unfold wv
  rw [flattenHOL]
  induction ws with
  | nil => rfl
  | cons w ws ih =>
      simp only [List.map_cons, List.flatten_cons, flattenHOL]
      rw [← ih]
      simp

end InitECandidate.Solver.MemSafe.Struct
