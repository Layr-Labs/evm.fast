import InitECandidate.Solver.Spec.Fq12.IzbDeg

/-!
# Four-word loads and stores

`lds {1,1,1,1} x` reads the cells `x, x + 8, x + 16, x + 24` (`words4`), `st x, v` for a
4-limb `v` writes them (`WSlot x`).

* `load4_inv`: a 4-word load evaluates to `wv (words4 memory x)` with all four cells in the
  domain.
* `store4`: a 4-word store changes exactly the four cells, which then hold the stored limbs.
* `wslot_inBuf`: the cells of coefficient `k < 13` lie in the buffer.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The four cells of a 4-limb value at `x`. -/
def WSlot (x c : BitVec 64) : Prop := ∃ j : Nat, j < 4 ∧ c = x + BitVec.ofNat 64 (8 * j)

/-- The four words at `x`. -/
def words4 (m : BitVec 64 → HolWordLab 64) (x : BitVec 64) : List (BitVec 64) :=
  [cellW m x, cellW m (x + BitVec.ofNat 64 8), cellW m (x + BitVec.ofNat 64 16),
    cellW m (x + BitVec.ofNat 64 24)]

theorem words4_length (m : BitVec 64 → HolWordLab 64) (x : BitVec 64) : (words4 m x).length = 4 :=
  rfl

theorem words4_frame {m m' : BitVec 64 → HolWordLab 64} {x : BitVec 64}
    (h : ∀ c, WSlot x c → m' c = m c) : words4 m' x = words4 m x := by
  unfold words4 cellW
  rw [h x ⟨0, by omega, by simp⟩, h _ ⟨1, by omega, rfl⟩, h _ ⟨2, by omega, rfl⟩,
    h _ ⟨3, by omega, rfl⟩]

theorem nx8 (x : BitVec 64) : x + bytesInWordHOL 64 * BitVec.ofNat 64 1 = x + BitVec.ofNat 64 8 := by
  rw [show bytesInWordHOL 64 = BitVec.ofNat 64 8 from rfl]; bv_omega

theorem add_8_8 (x : BitVec 64) : x + BitVec.ofNat 64 8 + BitVec.ofNat 64 8 = x + BitVec.ofNat 64 16 := by
  bv_omega
theorem add_16_8 (x : BitVec 64) : x + BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = x + BitVec.ofNat 64 24 := by
  bv_omega

/-- The four cells are in the domain. -/
def Dom4 (D : BitVec 64 → Prop) (x : BitVec 64) : Prop :=
  D x ∧ D (x + BitVec.ofNat 64 8) ∧ D (x + BitVec.ofNat 64 16) ∧ D (x + BitVec.ofNat 64 24)

theorem load4_eq (x : BitVec 64) (dom : BitVec 64 → Prop) (inst : DecidablePred dom)
    (m : BitVec 64 → HolWordLab 64) (ctx : List (MlS × Flapjack.Pancake.PanLang.StructInfoHOLExact)) :
    @memLoadHOLExact 64 _ (.comb [.one, .one, .one, .one]) x dom inst m ctx =
      @ite _ (Dom4 dom x) (Classical.propDecidable _) (some (wv (words4 m x))) none := by
  rw [memLoadHOLExact]
  simp only [memLoadsHOLExact, memLoadHOLExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL,
    nx8, add_8_8, add_16_8]
  unfold Dom4 words4 wv
  have e : ∀ c, m c = .word (cellW m c) := cell_eq m
  by_cases h0 : dom x <;> by_cases h1 : dom (x + BitVec.ofNat 64 8) <;>
    by_cases h2 : dom (x + BitVec.ofNat 64 16) <;> by_cases h3 : dom (x + BitVec.ofNat 64 24) <;>
    simp [h0, h1, h2, h3, ← e]

variable {σ : Type}

/-- A 4-word load from a word address. -/
theorem ev_load4 {s : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {x : BitVec 64}
    (he : ev s e = some (.val (.word x))) :
    ev s (.load (shK 4) e) =
      @ite _ (Dom4 s.memaddrs x) (Classical.propDecidable _) (some (wv (words4 s.memory x))) none := by
  have hwf : Flapjack.Pancake.PanLang.isWfShapeExactHOL s.structs (shK 4) = true := by
    simp [shK, Flapjack.Pancake.PanLang.isWfShapeExactHOL, Flapjack.Pancake.PanLang.isWfShapesExactHOL]
  simp only [ev, evalHOLExact] at he ⊢
  rw [if_pos hwf, he]
  dsimp only
  exact load4_eq x s.memaddrs _ s.memory s.structs

theorem ev_load4_inv {s : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {x : BitVec 64}
    {v : ValueHOL 64} (he : ev s e = some (.val (.word x))) (h : ev s (.load (shK 4) e) = some v) :
    v = wv (words4 s.memory x) ∧ Dom4 s.memaddrs x := by
  rw [ev_load4 he] at h
  split at h
  · exact ⟨(Option.some.inj h).symm, by assumption⟩
  · simp at h

theorem flatten_wv (ws : List (BitVec 64)) :
    flattenHOL (wv ws) = ws.map fun w => (.word w : HolWordLab 64) := by
  unfold wv
  rw [flattenHOL]
  induction ws with
  | nil => rfl
  | cons w ws ih =>
      simp only [List.map_cons, List.flatten_cons, ih]
      rw [flattenHOL]
      rfl

/-- A 4-word store. -/
theorem store4 {x : BitVec 64} {ws : List (BitVec 64)} (hws : ws.length = 4)
    {D : BitVec 64 → Prop} {inst : DecidablePred D} {m mem : BitVec 64 → HolWordLab 64}
    (h : @panMemStoresHOL 64 _ x (flattenHOL (wv ws)) D inst m = some mem) :
    (∀ c, ¬ WSlot x c → mem c = m c) ∧ words4 mem x = ws ∧ Dom4 D x := by
  obtain ⟨w0, w1, w2, w3, rfl⟩ := list4 hws
  rw [flatten_wv] at h
  simp only [List.map_cons, List.map_nil, panMemStoresHOL, panMemStoreHOL] at h
  rw [show panBytesInWord 64 = BitVec.ofNat 64 8 from rfl, add_8_8, add_16_8] at h
  split at h <;> try simp at h
  rename_i u0 h0
  split at h0 <;> try simp at h0
  rename_i d0
  subst h0
  split at h <;> try simp at h
  rename_i u1 h1
  split at h1 <;> try simp at h1
  rename_i d1
  subst h1
  split at h <;> try simp at h
  rename_i u2 h2
  split at h2 <;> try simp at h2
  rename_i d2
  subst h2
  split at h <;> try simp at h
  rename_i u3 h3
  split at h3 <;> try simp at h3
  rename_i d3
  subst h3
  subst h
  have n1 : x + BitVec.ofNat 64 8 ≠ x := by bv_omega
  have n2 : x + BitVec.ofNat 64 16 ≠ x := by bv_omega
  have n3 : x + BitVec.ofNat 64 24 ≠ x := by bv_omega
  have n21 : x + BitVec.ofNat 64 16 ≠ x + BitVec.ofNat 64 8 := by bv_omega
  have n31 : x + BitVec.ofNat 64 24 ≠ x + BitVec.ofNat 64 8 := by bv_omega
  have n32 : x + BitVec.ofNat 64 24 ≠ x + BitVec.ofNat 64 16 := by bv_omega
  refine ⟨fun c hc => ?_, ?_, ⟨d0, d1, d2, d3⟩⟩
  · have c0 : c ≠ x := fun e => hc ⟨0, by omega, by rw [e]; simp⟩
    have c1 : c ≠ x + BitVec.ofNat 64 8 := fun e => hc ⟨1, by omega, e⟩
    have c2 : c ≠ x + BitVec.ofNat 64 16 := fun e => hc ⟨2, by omega, e⟩
    have c3 : c ≠ x + BitVec.ofNat 64 24 := fun e => hc ⟨3, by omega, e⟩
    simp [c0, c1, c2, c3]
  · simp [words4, cellW, n1, n2, n3, n21, n31, n32]

end InitECandidate.Solver.Spec.Fq12
