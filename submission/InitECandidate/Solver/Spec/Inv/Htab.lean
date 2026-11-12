import InitECandidate.Solver.Spec.Inv.HtabCode

/-!
# The conditional cost of `htab_truncate`

`htab_truncate(t, n)` loops `while count(t) >+ n { htab_del(t, key of order[count - 1]) }`.
Over *all* heaps the loop is unbounded: `htab_del` can return without deleting (its trie
walk or key comparison fails), and its stores through heap-derived node indices can
overwrite the count. Under a table invariant it is bounded by the count.

The invariant is a parameter `W s T` ("the table at `T` is well formed in `s`"); it must
depend only on memory, memory domain and byte order (`MemOnly W`), and `htab_del` must, from a
well-formed table with a positive count, deleting the key of the last-inserted entry,
return with the table still well formed, the count lowered by one and the stride cell
unchanged (`DelSpec σ X W`). `Inv/HtabWF.lean` defines the concrete predicate (`TableWF`)
that we expect to satisfy `DelSpec`.

* `truncLoop_step`: a completed iteration keeps the loop invariant and lowers the count.
* `htab_truncate_costP` (**conditional table entry**): given an all-states cost `Bdel` of
  `htab_del` (from the analyzer's table) and `DelSpec σ X W`,
  `CalleeCostP σ X "htab_truncate" (fun [t, n] s => W s t) (2 ^ 64 * (Bdel + 2))`.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Memory reads -/

abbrev Mem := BitVec 64 → HolWordLab 64

/-- The word stored at `a` (memory cells are words: `HolWordLab` has no label case). -/
def rd (m : Mem) (a : BitVec 64) : BitVec 64 :=
  match m a with
  | .word w => w

theorem rd_of {m : Mem} {a w : BitVec 64} (h : m a = .word w) : rd m a = w := by
  unfold rd; rw [h]

/-- The count of the table at `T`. -/
def cntOf (m : Mem) (T : BitVec 64) : Nat := (rd m (T + BitVec.ofNat 64 24)).toNat

/-- The key pointer of the last-inserted entry, as `htab_truncate` computes it:
`keys + order[count - 1] * stride`. -/
def lastKey (m : Mem) (T : BitVec 64) : BitVec 64 :=
  rd m (T + BitVec.ofNat 64 32) +
    rd m (rd m (T + BitVec.ofNat 64 48) + (rd m (T + BitVec.ofNat 64 24) - BitVec.ofNat 64 1) *
      BitVec.ofNat 64 8) * rd m (T + BitVec.ofNat 64 8)

/-! ## The interface -/

section spec
variable {σ : Type}

/-- `W` depends only on memory, memory domain and byte order. -/
def MemOnly (W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop) : Prop :=
  ∀ s u T, u.memory = s.memory → u.memaddrs = s.memaddrs → u.be = s.be → W s T → W u T

/-- What `htab_del` must guarantee on the deletion `htab_truncate` performs. -/
def DelPost (W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop) (T : BitVec 64)
    (s u : PanSemStateFiniteExact 64 σ) : Prop :=
  W u T ∧ cntOf u.memory T + 1 = cntOf s.memory T ∧
    u.memory (T + BitVec.ofNat 64 8) = s.memory (T + BitVec.ofNat 64 8)

/-- **The `htab_del` obligation.** From a well-formed table with a positive count, deleting
the key of the last-inserted entry returns with `DelPost`. -/
def DelSpec (σ : Type) (X : Ctx 64) (W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop) :
    Prop :=
  FunSpec σ X (nm "htab_del") (fun vs s r u => ∀ T, W s T → 0 < cntOf s.memory T →
    vs = [.val (.word T), .val (.word (lastKey s.memory T))] →
    ∀ v, r = .returned v → DelPost W T s u)

/-- The loop invariant of `htab_truncate`. -/
def TrI (W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop) (s : PanSemStateFiniteExact 64 σ) :
    Prop :=
  ∃ T N, s.locals.lookup (nm "t") = some (.val (.word T)) ∧
    s.locals.lookup (nm "n") = some (.val (.word N)) ∧
    s.locals.lookup (nm "stride") = some (.val (s.memory (T + BitVec.ofNat 64 8))) ∧ W s T

/-- The loop measure: the count of the table `t`. -/
def trμ (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup (nm "t") with
  | some (.val (.word T)) => cntOf s.memory T
  | _ => 0

theorem trμ_of {s : PanSemStateFiniteExact 64 σ} {T : BitVec 64}
    (h : s.locals.lookup (nm "t") = some (.val (.word T))) : trμ s = cntOf s.memory T := by
  unfold trμ; rw [h]

theorem trμ_le (s : PanSemStateFiniteExact 64 σ) : trμ s ≤ 2 ^ 64 - 1 := by
  unfold trμ
  split
  · rename_i T _
    unfold cntOf
    have := (rd s.memory (T + BitVec.ofNat 64 24)).isLt
    omega
  · omega

end spec

/-! ## The loop step -/

section loop
variable {σ : Type} {X : Ctx 64}

/-- Restoring a declared local keeps the other locals. -/
theorem lookup_restore {m : HolFiniteMapExact MlS (ValueHOL 64)} {x y : MlS}
    {old : Option (ValueHOL 64)} (h : x ≠ y) : (m.resVarEq (x, old)).lookup y = m.lookup y :=
  lookup_resVarEq_ne m old h

theorem truncLoop_step {W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop} (hW : MemOnly W)
    (hdel : DelSpec σ X W) (k : Nat) :
    Hoare σ X (fun s => TrI W s ∧ CondTrue s truncCond ∧ trμ s = k) truncLoopBody
      (fun r t => r = none ∨ r = some .continue → TrI W t ∧ trμ t < k) := by
  refine hoare_dec fun s _ ⟨⟨T, N, hT, hN, hS, hWs⟩, hc, hk⟩ v1 hv1 _ => ?_
  -- the count and the position
  obtain ⟨x, y, hx, hy, rfl⟩ := ev_sub2_inv hv1
  have hmx : s.memory (T + BitVec.ofNat 64 24) = .word x := by
    have := ev_tLoad_inv hT hx
    simp only [ValueHOL.val.injEq] at this
    exact this.symm
  rw [ev_cw] at hy
  cases hy
  have hpos : 0 < x.toNat := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨a, b, ha, hb, hlt⟩ := cmp_true hw hw0
    rw [hx] at hb
    cases hb
    have := lower_true hlt
    omega
  refine hoare_dec fun s1 _ hs1 v2 hv2 _ => ?_
  have hs1' : s1 = setVarHOLFinite (nm "pos") (.val (.word (x - BitVec.ofNat 64 1))) s := hs1
  subst hs1'
  have hT1 : (setVarHOLFinite (nm "pos") (.val (.word (x - BitVec.ofNat 64 1))) s).locals.lookup
      (nm "t") = some (.val (.word T)) := by rw [lk_set_ne _ _ (by decide)]; exact hT
  -- the leaf index
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv2
  obtain ⟨x48, z, h48, hz, hwz⟩ := ev_add2_inv hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hwz
  subst hwz
  have hm48 : s.memory (T + BitVec.ofNat 64 48) = .word x48 := by
    have := ev_tLoad_inv hT1 h48
    simp only [ValueHOL.val.injEq] at this
    exact this.symm
  obtain ⟨p, e8, hp, he8, hzp⟩ := ev_mul2_inv hz
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hzp
  subst hzp
  rw [ev_lv, lk_set_self] at hp
  cases hp
  rw [ev_cw] at he8
  cases he8
  refine hoare_callD hdel fun s2 _ hs2 vs hvs callee v st hR _ => ?_
  have hs2' : s2 = setVarHOLFinite (nm "leaf")
      (.val (s.memory (x48 + (x - BitVec.ofNat 64 1) * BitVec.ofNat 64 8)))
      (setVarHOLFinite (nm "pos") (.val (.word (x - BitVec.ofNat 64 1))) s) := hs2
  subst hs2'
  -- the arguments
  obtain ⟨va, vb, rfl, hva, hvb⟩ := evs_two_inv hvs
  have hT2 : (setVarHOLFinite (nm "leaf") (.val (s.memory (x48 + (x - BitVec.ofNat 64 1) *
      BitVec.ofNat 64 8)))
      (setVarHOLFinite (nm "pos") (.val (.word (x - BitVec.ofNat 64 1))) s)).locals.lookup
      (nm "t") = some (.val (.word T)) := by rw [lk_set_ne _ _ (by decide)]; exact hT1
  rw [ev_lv, hT2] at hva
  cases hva
  obtain ⟨k32, z', h32, hz', rfl⟩ := ev_add2_inv hvb
  have hm32 : s.memory (T + BitVec.ofNat 64 32) = .word k32 := by
    have := ev_tLoad_inv hT2 h32
    simp only [ValueHOL.val.injEq] at this
    exact this.symm
  obtain ⟨L, S, hL, hS', hzLS⟩ := ev_mul2_inv hz'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hzLS
  subst hzLS
  rw [ev_lv, lk_set_self] at hL
  rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hS] at hS'
  simp only [Option.some.injEq, ValueHOL.val.injEq] at hL hS'
  -- the spec of `htab_del`
  have hWe : W (callEntryStateHOLFinite (setVarHOLFinite (nm "leaf")
      (.val (s.memory (x48 + (x - BitVec.ofNat 64 1) * BitVec.ofNat 64 8)))
      (setVarHOLFinite (nm "pos") (.val (.word (x - BitVec.ofNat 64 1))) s)) callee) T :=
    hW s _ T rfl rfl rfl hWs
  have hcnt : cntOf s.memory T = x.toNat := by unfold cntOf; rw [rd_of hmx]
  have hkey : lastKey s.memory T = k32 + L * S := by
    unfold lastKey
    rw [rd_of hm32, rd_of hm48, rd_of hmx, rd_of hL, rd_of hS']
  have hpost := hR T hWe (by show 0 < cntOf s.memory T; omega)
    (congrArg (fun z => [ValueHOL.val (HolWordLab.word T), ValueHOL.val (HolWordLab.word z)])
      hkey.symm) v rfl
  obtain ⟨hWst, hcst, hstr⟩ := hpost
  intro _
  refine ⟨⟨T, N, ?_, ?_, ?_, ?_⟩, ?_⟩
  · simp only []
    rw [lookup_restore (by decide), lookup_restore (by decide)]
    exact hT2
  · simp only []
    rw [lookup_restore (by decide), lookup_restore (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]
    exact hN
  · simp only []
    rw [lookup_restore (by decide), lookup_restore (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), hS]
    exact congrArg (fun c => some (ValueHOL.val c)) hstr.symm
  · exact hW st _ T rfl rfl rfl hWst
  · rw [trμ_of (by
      simp only []
      rw [lookup_restore (by decide), lookup_restore (by decide)]
      exact hT2), ← hk, trμ_of hT]
    show cntOf st.memory T < cntOf s.memory T
    have : cntOf st.memory T + 1 = cntOf s.memory T := hcst
    omega

/-! ## The function -/

theorem truncLoopBody_cost (hdelc : CalleeCost σ X (nm "htab_del") Bdel) :
    Cost σ X truncLoopBody (1 + Bdel + 0) :=
  cost_dec (cost_dec (cost_call hdelc (by intro _ _ _ _ h; cases h)))

/-- **Conditional cost of `htab_truncate`.** -/
theorem htab_truncate_costP (hC : X.code.lookup = guestCode) {Bdel : Nat}
    (hdelc : CalleeCost σ X (nm "htab_del") Bdel)
    {W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop} (hW : MemOnly W)
    (hdel : DelSpec σ X W) :
    CalleeCostP σ X (nm "htab_truncate")
      (fun vs s => ∃ T n, vs = [.val (.word T), .val (.word n)] ∧ W s T)
      (2 ^ 64 * (Bdel + 2)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_htab_truncate (by decide) hl
  -- the loop
  have hstep := truncLoop_step hW hdel
  have hwhile : CostP σ X (TrI W) (.while truncCond truncLoopBody)
      ((2 ^ 64 - 1 + 1) * ((1 + Bdel + 0) + 1)) := by
    refine costP_while trμ (2 ^ 64 - 1)
      (fun s ⟨T, N, h1, h2, h3, h4⟩ => ⟨T, N, h1, h2, h3, hW s _ T rfl rfl rfl h4⟩) (fun s => rfl)
      (costP_of_cost (truncLoopBody_cost hdelc)) ?_ (fun s _ _ _ => trμ_le s) ?_
    · intro s hs hp ht hr
      exact (hstep (trμ s) s hs ⟨hp.1, hp.2, rfl⟩ ht hr).1
    · intro k s hs hp ht hr
      exact (hstep k s hs hp ht hr).2
  have hbody : CostP σ X (TrI W) (.seq (.while truncCond truncLoopBody) (.return (cw 0)))
      ((2 ^ 64 - 1 + 1) * ((1 + Bdel + 0) + 1) + 0) :=
    costP_seq (R := fun _ => True) hwhile (fun _ _ _ _ _ => trivial) (costP_of_cost (cost_return _))
  have hfin : CostP σ X (fun s => s.locals = callee ∧
      ∃ T n, [A, B] = [.val (.word T), .val (.word n)] ∧ W s T) truncBody
      ((2 ^ 64 - 1 + 1) * ((1 + Bdel + 0) + 1) + 0) := ?_
  · exact hfin.mono (by omega)
  refine costP_dec ?_
  intro s _ ⟨hloc, T, N, hAB, hWs⟩ v hv _
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hT : s.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hN : s.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  rw [ev_tLoad_inv hT hv]
  refine hbody.pre fun u _ hu => ?_
  subst hu
  refine ⟨T, N, ?_, ?_, ?_, hW s _ T rfl rfl rfl hWs⟩
  · rw [lk_set_ne _ _ (by decide)]; exact hT
  · rw [lk_set_ne _ _ (by decide)]; exact hN
  · rw [lk_set_self]; rfl

end loop

/-! ## A bound from the count -/

section bounded
variable {σ : Type} {X : Ctx 64}

theorem trμ_le_of {W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop} {M : Nat}
    (hM : ∀ s T, W s T → cntOf s.memory T ≤ M) {s : PanSemStateFiniteExact 64 σ} (h : TrI W s) :
    trμ s ≤ M := by
  obtain ⟨T, N, hT, -, -, hW⟩ := h
  rw [trμ_of hT]
  exact hM s T hW

/-- **Conditional cost of `htab_truncate` with a count bound `M`** (every well-formed table
holds at most `M` entries). -/
theorem htab_truncate_costP_bound (hC : X.code.lookup = guestCode) {Bdel : Nat}
    (hdelc : CalleeCost σ X (nm "htab_del") Bdel)
    {W : PanSemStateFiniteExact 64 σ → BitVec 64 → Prop} (hW : MemOnly W)
    (hdel : DelSpec σ X W) {M : Nat} (hM : ∀ s T, W s T → cntOf s.memory T ≤ M) :
    CalleeCostP σ X (nm "htab_truncate")
      (fun vs s => ∃ T n, vs = [.val (.word T), .val (.word n)] ∧ W s T)
      ((M + 1) * (Bdel + 2)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_htab_truncate (by decide) hl
  have hstep := truncLoop_step hW hdel
  have hwhile : CostP σ X (TrI W) (.while truncCond truncLoopBody) ((M + 1) * ((1 + Bdel + 0) + 1)) := by
    refine costP_while trμ M
      (fun s ⟨T, N, h1, h2, h3, h4⟩ => ⟨T, N, h1, h2, h3, hW s _ T rfl rfl rfl h4⟩) (fun s => rfl)
      (costP_of_cost (truncLoopBody_cost hdelc)) ?_ (fun s _ hI _ => trμ_le_of hM hI) ?_
    · intro s hs hp ht hr
      exact (hstep (trμ s) s hs ⟨hp.1, hp.2, rfl⟩ ht hr).1
    · intro k s hs hp ht hr
      exact (hstep k s hs hp ht hr).2
  have hbody : CostP σ X (TrI W) (.seq (.while truncCond truncLoopBody) (.return (cw 0)))
      ((M + 1) * ((1 + Bdel + 0) + 1) + 0) :=
    costP_seq (R := fun _ => True) hwhile (fun _ _ _ _ _ => trivial) (costP_of_cost (cost_return _))
  have hfin : CostP σ X (fun s => s.locals = callee ∧
      ∃ T n, [A, B] = [.val (.word T), .val (.word n)] ∧ W s T) truncBody
      ((M + 1) * ((1 + Bdel + 0) + 1) + 0) := ?_
  · exact hfin.mono (Nat.le_of_eq (by rw [Nat.add_zero, show 1 + Bdel + 0 + 1 = Bdel + 2 by omega]))
  refine costP_dec ?_
  intro s _ ⟨hloc, T, N, hAB, hWs⟩ v hv _
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hT : s.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hN : s.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  rw [ev_tLoad_inv hT hv]
  refine hbody.pre fun u _ hu => ?_
  subst hu
  refine ⟨T, N, ?_, ?_, ?_, hW s _ T rfl rfl rfl hWs⟩
  · rw [lk_set_ne _ _ (by decide)]; exact hT
  · rw [lk_set_ne _ _ (by decide)]; exact hN
  · rw [lk_set_self]; rfl

end bounded

end InitECandidate.Solver.Spec.Inv
