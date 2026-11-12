import InitECandidate.Solver.MemSafe.Rec.DecPayCode
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpItem

set_option autoImplicit false

/-!
# `tx_bytes_item` / `tx_list_item` / `tx_fixed_bytes` / `tx_to_item`: the code and the slot call

All four read slice `i` of the array `arr` (`P = rd (arr + 16 i)`, `L = rd (arr + 16 i + 8)`) and call
`rlp_item(P, L)`.  `slot_call` runs that call and hands the located fact `RiL P L it` to the tail.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec
open InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

open InitECandidate.Solver.MemSafe (rd ptrsOf Ptrs)

/-- `lds 1 (arr + i * 16)` -/
def slotPE : ExpHOL 64 := .load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16]])
/-- `lds 1 (arr + i * 16 + 8)` -/
def slotLE : ExpHOL 64 := .load .one (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16], cw 8])

/-- `var it = rlp_item(slot P, slot L); k` -/
def slotCall (k : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm "it") (.comb [.one, .one, .one, .one]) (nm "rlp_item") [slotPE, slotLE] k

def txErrGuard (c : ExpHOL 64) (k : Nat) : ProgHOL 64 := .ite c (.raise (nm "TxErr") (cw k)) .skip

def itRet : ProgHOL 64 :=
  .return (.rstruct [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))])

def txbBody : ProgHOL 64 :=
  slotCall (.seq (txErrGuard (.cmp .notEqual (.rfield 0 (lv (nm "it"))) (cw 0)) 15) itRet)

def tlBody : ProgHOL 64 :=
  slotCall (.seq (txErrGuard (.cmp .notEqual (.rfield 0 (lv (nm "it"))) (cw 1)) 18) itRet)

def txfBody : ProgHOL 64 :=
  slotCall (.seq (txErrGuard (.cmp .notEqual (.rfield 0 (lv (nm "it"))) (cw 0)) 15)
    (.seq (txErrGuard (.cmp .notEqual (.rfield 2 (lv (nm "it"))) (lv (nm "width"))) 16)
      (.return (.rfield 1 (lv (nm "it"))))))

def txtBody : ProgHOL 64 :=
  slotCall (.seq (txErrGuard (.cmp .notEqual (.rfield 0 (lv (nm "it"))) (cw 0)) 17)
    (.seq (.ite (.cmp .equal (.rfield 2 (lv (nm "it"))) (cw 0)) (.return (cw 0)) .skip)
      (.seq (txErrGuard (.cmp .notEqual (.rfield 2 (lv (nm "it"))) (cw 20)) 17)
        (.return (.rfield 1 (lv (nm "it")))))))

def tpAI : List (MlS × ShapeHOL) := [(nm "arr", .one), (nm "i", .one)]
def tpAIW : List (MlS × ShapeHOL) := [(nm "arr", .one), (nm "i", .one), (nm "width", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_bytes_item : fnEntry Guest.Software.guestFn_tx_bytes_item =
    (nm "tx_bytes_item", tpAI, txbBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_list_item : fnEntry Guest.Software.guestFn_tx_list_item =
    (nm "tx_list_item", tpAI, tlBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_fixed_bytes : fnEntry Guest.Software.guestFn_tx_fixed_bytes =
    (nm "tx_fixed_bytes", tpAIW, txfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_to_item : fnEntry Guest.Software.guestFn_tx_to_item =
    (nm "tx_to_item", tpAI, txtBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_bytes_item : guestCode (nm "tx_bytes_item") = some (tpAI, txbBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 299) (by decide)) ⟨_, rfl⟩
    entry_tx_bytes_item

theorem code_tx_list_item : guestCode (nm "tx_list_item") = some (tpAI, tlBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 302) (by decide)) ⟨_, rfl⟩
    entry_tx_list_item

theorem code_tx_fixed_bytes : guestCode (nm "tx_fixed_bytes") = some (tpAIW, txfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 300) (by decide)) ⟨_, rfl⟩
    entry_tx_fixed_bytes

theorem code_tx_to_item : guestCode (nm "tx_to_item") = some (tpAI, txtBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 301) (by decide)) ⟨_, rfl⟩
    entry_tx_to_item

/-! ## The slot call -/

/-- Slice `i` of `arr`: the pointer cell. -/
def slotP (M : Mem) (arr i : BitVec 64) : BitVec 64 := rd M (arr + i * 16)
/-- Slice `i` of `arr`: the length cell. -/
def slotL (M : Mem) (arr i : BitVec 64) : BitVec 64 := rd M (arr + i * 16 + 8)

theorem ev_slotP {s : State σ} {arr i : BitVec 64} {v : ValueHOL 64}
    (hA : s.locals.lookup (nm "arr") = some (.val (.word arr)))
    (hI : s.locals.lookup (nm "i") = some (.val (.word i)))
    (h : ev s slotPE = some v) : v = .val (.word (slotP s.memory arr i)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' h
  obtain ⟨x, y, hx, hy, hxy⟩ := ev_add2_inv' hw
  obtain ⟨u, z, hu, hz, huz⟩ := ev_mul2_inv' hy
  rw [ev_lv' hA] at hx; cases hx
  rw [ev_lv' hI] at hu; cases hu
  rw [ev_cw] at hz; cases hz
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxy huz
  subst huz; subst hxy
  rfl

theorem ev_slotL {s : State σ} {arr i : BitVec 64} {v : ValueHOL 64}
    (hA : s.locals.lookup (nm "arr") = some (.val (.word arr)))
    (hI : s.locals.lookup (nm "i") = some (.val (.word i)))
    (h : ev s slotLE = some v) : v = .val (.word (slotL s.memory arr i)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' h
  obtain ⟨x, y, z, hx, hy, hz, hxyz⟩ := ev_add3_inv' hw
  obtain ⟨u, t, hu, ht, hut⟩ := ev_mul2_inv' hy
  rw [ev_lv' hA] at hx; cases hx
  rw [ev_lv' hI] at hu; cases hu
  rw [ev_cw] at ht; cases ht
  rw [ev_cw] at hz; cases hz
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxyz hut
  subst hut; subst hxyz
  simp only [slotL, BitVec.add_assoc]
  rfl

theorem slot_call (hC : X.code.lookup = guestCode) {s0 : State σ} {arr i : BitVec 64} {p : Ptrs}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered)
    (hA : s0.locals.lookup (nm "arr") = some (.val (.word arr)))
    (hI : s0.locals.lookup (nm "i") = some (.val (.word i)))
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L}) {k : ProgHOL 64}
    (hk : ∀ (v : ValueHOL 64) (st : State σ),
      RiL (slotP s0.memory arr i) (slotL s0.memory arr i) v →
      (∃ a b c d : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)]) →
      Hoare σ X (fun t => t = setVarHOLFinite (nm "it") v { st with locals := s0.locals }) k Q) :
    Hoare σ X (fun s => s = s0) (slotCall k) Q := by
  unfold slotCall
  refine hoare_decCallL (freshFoot_rlp_item' hC) hQ ?_
  intro s hs hP vs hvs callee v st hR hst hsh
  subst hP
  obtain ⟨va, vb, rfl, ha, hb⟩ := evs_two_inv' hvs
  have ha' := ev_slotP hA hI ha
  have hb' := ev_slotL hA hI hb
  subst ha'; subst hb'
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := by
    rw [Spec.Mpt.ptrsOf_frame rfl]; exact hp
  obtain ⟨p', -, -, -, -, hQ'⟩ := hR v rfl p hpe hord trivial
  obtain ⟨P', L', hvs', hRi⟩ := hQ'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  have h4 : ∃ a b c d : BitVec 64,
      v = .rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)] := by
    obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape (k := 4) ((shapeEqHOL_eq_true _ _).mp hsh)
    match ws, hl with
    | [x, y, z, w], _ => exact ⟨x, y, z, w, rfl⟩
  exact hk v st hRi h4

/-- The located output of an item read from slot `i`: length `c <= L`, payload inside the slice. -/
def SlotOut (M : Mem) (arr i b c : BitVec 64) : Prop :=
  c.toNat ≤ (slotL M arr i).toNat ∧
    ((slotP M arr i).toNat + (slotL M arr i).toNat < 2 ^ 64 →
      (slotP M arr i).toNat ≤ b.toNat ∧ b.toNat + c.toNat ≤ (slotP M arr i).toNat + (slotL M arr i).toNat)

theorem slotOut_of {M : Mem} {arr i a b c d : BitVec 64}
    (h : RiL (slotP M arr i) (slotL M arr i)
      (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])) :
    SlotOut M arr i b c := h a b c d rfl

theorem hoare_raiseGuard {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64}
    (hk : Hoare σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) k Q) :
    Hoare σ X P (.seq (.ite c (.raise x e) .skip) k) Q :=
  hoare_seq (R := fun r t => r = none ∧ P t ∧ ev t c = some (.val (.word 0)))
    (hoare_ite hoare_raise (hoare_skip fun s _ h => ⟨rfl, h.1, h.2⟩))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hk (fun _ _ h => ⟨h.2.1, h.2.2⟩))

theorem ev_it_field {t : State σ} {a b c d : BitVec 64}
    (hit : t.locals.lookup (nm "it") =
      some (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])) :
    ev t (.rfield 0 (lv (nm "it"))) = some (.val (.word a)) ∧
    ev t (.rfield 1 (lv (nm "it"))) = some (.val (.word b)) ∧
    ev t (.rfield 2 (lv (nm "it"))) = some (.val (.word c)) :=
  ⟨ev_rfield_w hit rfl, ev_rfield_w hit rfl, ev_rfield_w hit rfl⟩

/-- Located `tx_bytes_item(arr, i)`: the returned `<b, c>` is a payload inside slot `i`. -/
theorem funSpec_tx_bytes_item (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "tx_bytes_item") (fun vs s r t => ∀ v, r = .returned v →
      ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → True →
      ∀ arr i b c : BitVec 64, vs = [.val (.word arr), .val (.word i)] →
        v = .rStruct [.val (.word b), .val (.word c)] → SlotOut s.memory arr i b c) := by
  refine Spec.Mpt.Dec.funSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_tx_bytes_item (by decide) hl
  obtain ⟨arr, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨i, rfl⟩ := val_of_shapeEq_one hsB
  have hA' : s0.locals.lookup (nm "arr") = some (.val (.word arr)) := by rw [hloc]; exact hA
  have hI' : s0.locals.lookup (nm "i") = some (.val (.word i)) := by rw [hloc]; exact hB
  refine hoare_ret_ptrs (Pre := True) (R := fun p v t => ∀ arr' i' b c : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i)] = [.val (.word arr'), .val (.word i')] →
      v = .rStruct [.val (.word b), .val (.word c)] → SlotOut s0.memory arr' i' b c) ?_
  intro p hp hord _
  unfold txbBody
  refine slot_call hC hp hord hA' hI' (Q := fun r t => ∀ v, r = some (.returned v) →
    ∀ arr' i' b c : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i)] = [.val (.word arr'), .val (.word i')] →
      v = .rStruct [.val (.word b), .val (.word c)] → SlotOut s0.memory arr' i' b c)
    (fun _ _ _ h => h) ?_
  intro v st hRi ⟨a, b, c, d, hv⟩
  subst hv
  have hso := slotOut_of hRi
  refine hoare_raiseGuard (hoare_return fun t _ ⟨ht, hc⟩ w hw => ?_)
  subst ht
  have hit := lk_set_self ({ st with locals := s0.locals } : State σ) (nm "it")
    (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])
  obtain ⟨h0, h1, h2⟩ := ev_it_field hit
  rw [ev_rstruct (evs_cons h1 (evs_cons h2 evs_nil))] at hw
  cases hw
  intro v' hv' arr' i' b' c' hvs hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hv
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨rfl, rfl⟩ := hv
  exact hso

/-- Located `tx_list_item(arr, i)`: the returned `<b, c>` is a payload inside slot `i`. -/
theorem funSpec_tx_list_item (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "tx_list_item") (fun vs s r t => ∀ v, r = .returned v →
      ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → True →
      ∀ arr i b c : BitVec 64, vs = [.val (.word arr), .val (.word i)] →
        v = .rStruct [.val (.word b), .val (.word c)] → SlotOut s.memory arr i b c) := by
  refine Spec.Mpt.Dec.funSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_tx_list_item (by decide) hl
  obtain ⟨arr, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨i, rfl⟩ := val_of_shapeEq_one hsB
  have hA' : s0.locals.lookup (nm "arr") = some (.val (.word arr)) := by rw [hloc]; exact hA
  have hI' : s0.locals.lookup (nm "i") = some (.val (.word i)) := by rw [hloc]; exact hB
  refine hoare_ret_ptrs (Pre := True) (R := fun p v t => ∀ arr' i' b c : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i)] = [.val (.word arr'), .val (.word i')] →
      v = .rStruct [.val (.word b), .val (.word c)] → SlotOut s0.memory arr' i' b c) ?_
  intro p hp hord _
  unfold tlBody
  refine slot_call hC hp hord hA' hI' (Q := fun r t => ∀ v, r = some (.returned v) →
    ∀ arr' i' b c : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i)] = [.val (.word arr'), .val (.word i')] →
      v = .rStruct [.val (.word b), .val (.word c)] → SlotOut s0.memory arr' i' b c)
    (fun _ _ _ h => h) ?_
  intro v st hRi ⟨a, b, c, d, hv⟩
  subst hv
  have hso := slotOut_of hRi
  refine hoare_raiseGuard (hoare_return fun t _ ⟨ht, hc⟩ w hw => ?_)
  subst ht
  have hit := lk_set_self ({ st with locals := s0.locals } : State σ) (nm "it")
    (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])
  obtain ⟨h0, h1, h2⟩ := ev_it_field hit
  rw [ev_rstruct (evs_cons h1 (evs_cons h2 evs_nil))] at hw
  cases hw
  intro v' hv' arr' i' b' c' hvs hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hv
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨rfl, rfl⟩ := hv
  exact hso


/-- Located `tx_fixed_bytes(arr, i, width)`: the returned pointer starts a `width`-byte payload inside slot `i`. -/
theorem funSpec_tx_fixed_bytes (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "tx_fixed_bytes") (fun vs s r t => ∀ v, r = .returned v →
      ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → True →
      ∀ arr i w b : BitVec 64, vs = [.val (.word arr), .val (.word i), .val (.word w)] →
        v = .val (.word b) → SlotOut s.memory arr i b w) := by
  refine Spec.Mpt.Dec.funSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, W, rfl, hsA, hsB, hsW, hA, hB, hW⟩ :=
    Spec.lookupCode_three code_tx_fixed_bytes (by decide) (by decide) (by decide) hl
  obtain ⟨arr, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨i, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsW
  have hA' : s0.locals.lookup (nm "arr") = some (.val (.word arr)) := by rw [hloc]; exact hA
  have hI' : s0.locals.lookup (nm "i") = some (.val (.word i)) := by rw [hloc]; exact hB
  have hW' : s0.locals.lookup (nm "width") = some (.val (.word w)) := by rw [hloc]; exact hW
  refine hoare_ret_ptrs (Pre := True) (R := fun p v t => ∀ arr' i' w' b : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i), .val (.word w)] =
      [.val (.word arr'), .val (.word i'), .val (.word w')] →
      v = .val (.word b) → SlotOut s0.memory arr' i' b w') ?_
  intro p hp hord _
  unfold txfBody
  refine slot_call hC hp hord hA' hI' (Q := fun r t => ∀ v, r = some (.returned v) →
    ∀ arr' i' w' b : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i), .val (.word w)] =
      [.val (.word arr'), .val (.word i'), .val (.word w')] →
      v = .val (.word b) → SlotOut s0.memory arr' i' b w')
    (fun _ _ _ h => h) ?_
  intro v st hRi ⟨a, b, c, d, hv⟩
  subst hv
  have hso := slotOut_of hRi
  refine hoare_raiseGuard (hoare_raiseGuard (hoare_return fun t _ ⟨⟨ht, hc1⟩, hc2⟩ x hx => ?_))
  subst ht
  have hit := lk_set_self ({ st with locals := s0.locals } : State σ) (nm "it")
    (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])
  obtain ⟨h0, h1, h2⟩ := ev_it_field hit
  have hset : (setVarHOLFinite (nm "it")
      (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])
      ({ st with locals := s0.locals } : State σ)).locals.lookup (nm "width") = some (.val (.word w)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hW'
  obtain ⟨x1, y1, hx1, hy1, hxy⟩ := cmp_false hc2
  rw [h2] at hx1; rw [ev_lv' hset] at hy1
  cases hx1; cases hy1
  have hcw := notEqual_false hxy
  rw [ev_rfield (by rw [ev_lv]; exact hit)] at hx
  simp only [List.getElem?_cons_succ, List.getElem?_cons_zero] at hx
  cases hx
  intro v' hv' arr' i' w' b' hvs hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs hv
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  obtain rfl := hv
  subst hcw
  exact hso

/-- Located `tx_to_item(arr, i)`: `0`, or a pointer to a 20-byte payload inside slot `i`. -/
theorem funSpec_tx_to_item (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "tx_to_item") (fun vs s r t => ∀ v, r = .returned v →
      ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → True →
      ∀ arr i b : BitVec 64, vs = [.val (.word arr), .val (.word i)] →
        v = .val (.word b) → b = 0 ∨ SlotOut s.memory arr i b 20) := by
  refine Spec.Mpt.Dec.funSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_tx_to_item (by decide) hl
  obtain ⟨arr, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨i, rfl⟩ := val_of_shapeEq_one hsB
  have hA' : s0.locals.lookup (nm "arr") = some (.val (.word arr)) := by rw [hloc]; exact hA
  have hI' : s0.locals.lookup (nm "i") = some (.val (.word i)) := by rw [hloc]; exact hB
  refine hoare_ret_ptrs (Pre := True) (R := fun p v t => ∀ arr' i' b : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i)] = [.val (.word arr'), .val (.word i')] →
      v = .val (.word b) → b = 0 ∨ SlotOut s0.memory arr' i' b 20) ?_
  intro p hp hord _
  unfold txtBody
  refine slot_call hC hp hord hA' hI' (Q := fun r t => ∀ v, r = some (.returned v) →
    ∀ arr' i' b : BitVec 64,
    [ValueHOL.val (.word arr), .val (.word i)] = [.val (.word arr'), .val (.word i')] →
      v = .val (.word b) → b = 0 ∨ SlotOut s0.memory arr' i' b 20)
    (fun _ _ _ h => h) ?_
  intro v st hRi ⟨a, b, c, d, hv⟩
  subst hv
  have hso := slotOut_of hRi
  refine hoare_raiseGuard (hoare_retGuard ?_ (hoare_raiseGuard (hoare_return
    fun t _ ⟨⟨⟨ht, hc1⟩, hc2⟩, hc3⟩ x hx => ?_)))
  · intro t _ ⟨ht, hc1⟩ x hx
    rw [ev_cw] at hx
    cases hx
    intro v' hv' arr' i' b' hvs hv
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    exact Or.inl hv.symm
  · subst ht
    have hit := lk_set_self ({ st with locals := s0.locals } : State σ) (nm "it")
      (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)])
    obtain ⟨h0, h1, h2⟩ := ev_it_field hit
    obtain ⟨x1, y1, hx1, hy1, hxy⟩ := cmp_false hc3
    rw [h2] at hx1; rw [ev_cw] at hy1
    cases hx1; cases hy1
    have hcw := notEqual_false hxy
    rw [ev_rfield (by rw [ev_lv]; exact hit)] at hx
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero] at hx
    cases hx
    intro v' hv' arr' i' b' hvs hv
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs hv
    obtain ⟨rfl, rfl⟩ := hvs
    obtain rfl := hv
    subst hcw
    exact Or.inr hso

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_tx_bytes_item
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_tx_list_item
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_tx_fixed_bytes
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_tx_to_item
