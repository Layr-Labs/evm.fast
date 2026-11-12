import InitECandidate.Solver.MemSafe.Ptx.PtD6

/-!
# F3e: chunk 4a (`te_new` and the first stores into `te`, `ptS38` to `ptS47`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem len_ld1 {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.load .one a) = some v) :
    (flattenHOL v).length = 1 := by
  obtain ⟨w, -, -, rfl⟩ := ev_load_one h
  simp [flattenHOL]

theorem len_ld4 {s : State σ} {e : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load (.comb [.one, .one, .one, .one]) e) = some v) : (flattenHOL v).length = 4 := by
  have hx : ∃ x, ev s e = some (.val (.word x)) := by
    simp only [ev, evalHOLExact] at h
    split at h
    · split at h
      · rename_i x hx; exact ⟨x, hx⟩
      · simp at h
    · simp at h
  obtain ⟨x, hx⟩ := hx
  obtain ⟨h1, -⟩ := Spec.Fq12.ev_load4_inv hx h
  subst h1
  rw [Spec.Fq12.flatten_wv]
  simp [Spec.Fq12.words4]

theorem len_wv (pr : List (BitVec 64)) : (flattenHOL (wv pr)).length = pr.length := by
  rw [Spec.Fq12.flatten_wv]; simp

theorem len_word (x : BitVec 64) : (flattenHOL (.val (.word x) : ValueHOL 64)).length = 1 := by
  simp [flattenHOL]

theorem tn_fin : ptAllNames.contains (nm "te_new") = true := by decide_cbv
theorem mn_fin : ptAllNames.contains (nm "msg_new") = true := by decide_cbv

theorem rdin_nr {S : FS} {rl : List Fct} (h : RdIn S rl) {L : List Fct} (hL : ∀ X ∈ L, ∀ y, ¬ X.reads y) :
    RdIn (addF S L) rl := by
  intro f hf ⟨y, hy⟩
  rcases hf with hf | hf
  · exact h f hf ⟨y, hy⟩
  · exact absurd hy (hL f hf y)

theorem rdin_cons {S : FS} {rl : List Fct} (h : RdIn S rl) (X : Fct) : RdIn (addF S [X]) (X :: rl) := by
  intro f hf hy
  rcases hf with hf | hf
  · rcases h f hf hy with h' | h'
    · exact Or.inl h'
    · exact Or.inr (List.mem_cons_of_mem _ h')
  · rw [List.mem_singleton] at hf
    exact Or.inr (hf ▸ List.mem_cons_self ..)

theorem bv_off_ne {w : BitVec 64} {o1 o2 : Nat} (h1 : o1 < 2 ^ 64) (h2 : o2 < 2 ^ 64) (hne : o1 ≠ o2) :
    w + BitVec.ofNat 64 o1 ≠ w + BitVec.ofNat 64 o2 := by
  intro h
  have := congrArg BitVec.toNat h
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat] at this
  rw [Nat.mod_eq_of_lt h1, Nat.mod_eq_of_lt h2] at this
  have h3 := w.isLt
  omega


/-- A cell of the `al_addrs` block is not a cell of the earlier `te` block. -/
theorem te_arr_ne {wt wa : BitVec 64} {off j nbl : Nat} (hord : wt.toNat + 200 ≤ wa.toNat)
    (hwt : wt.toNat + 200 ≤ heapEnd) (hwa : wa.toNat + nbl ≤ heapEnd) (hoff : off < 200) (hj : 8 * j < nbl) :
    wa + BitVec.ofNat 64 (8 * j) ≠ wt + BitVec.ofNat 64 off := by
  intro h
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  have h2 := congrArg BitVec.toNat h
  rw [toNat_add_ofNat (by omega), toNat_add_ofNat (by omega)] at h2
  omega



/-- The reading facts about the `te` block. -/
def TeRd (wt w : BitVec 64) : List Fct :=
  [Fct.memw (wt + BitVec.ofNat 64 0) w, Fct.memw (wt + BitVec.ofNat 64 144) 0, Fct.memw (wt + BitVec.ofNat 64 152) 0]

/-- **The `te` cells are not cells of the later `al_addrs` block.** -/
theorem terd_ne_wa {E : PtE σ} {En : Env} {S : FS} {wt wa w : BitVec 64} {nbl : Nat}
    (hord : S (Fct.prop (wt.toNat + 200 ≤ wa.toNat))) (hpt : S (Fct.prop (BlkP wt 200)))
    (hpa' : S (Fct.prop (BlkP wa nbl))) :
    ∀ s : State σ, PA E En S s → ∀ f ∈ TeRd wt w, ∀ y, f.reads y → ∀ c, 8 * c < nbl →
      y ≠ wa + BitVec.ofNat 64 (8 * c) := by
  intro s hpa f hf y hy c hc
  obtain ⟨_, _, hwt⟩ := pa_prop hpa hpt
  obtain ⟨_, _, hwa⟩ := pa_prop hpa hpa'
  have hor := pa_prop hpa hord
  unfold TeRd at hf
  rcases List.mem_cons.mp hf with rfl | hf
  · simp only [Fct.reads] at hy; subst hy
    exact (te_arr_ne hor hwt hwa (by omega) hc).symm
  rcases List.mem_cons.mp hf with rfl | hf
  · simp only [Fct.reads] at hy; subst hy
    exact (te_arr_ne hor hwt hwa (by omega) hc).symm
  · rw [List.mem_singleton] at hf; subst hf
    simp only [Fct.reads] at hy; subst hy
    exact (te_arr_ne hor hwt hwa (by omega) hc).symm

/-- One list adds facts to `S`, the reading ones are in the new list. -/
theorem rdin_addF2 {S : FS} {rl rl' : List Fct} (h : RdIn S rl) (L : List Fct) (hsub : ∀ f ∈ rl, f ∈ rl')
    (hL : ∀ X ∈ L, (∀ y, ¬ X.reads y) ∨ X ∈ rl') : RdIn (addF S L) rl' := by
  intro f hf ⟨y, hy⟩
  rcases hf with hf | hf
  · rcases h f hf ⟨y, hy⟩ with h' | h'
    · exact Or.inl h'
    · exact Or.inr (hsub f h')
  · rcases hL f hf with h' | h'
    · exact absurd hy (h' y)
    · exact Or.inr h'

end InitECandidate.Solver.MemSafe.Ptx
