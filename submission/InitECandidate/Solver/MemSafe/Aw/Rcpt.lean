import InitECandidate.Solver.MemSafe.Aw.Bloom
import InitECandidate.Solver.MemSafe.Aw.Pure

set_option autoImplicit false

/-!
# `encode_receipt` and `block_rlp_length` as above-writers (target D)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def pureS1 : List MlS := [nm "rlp_be_len", nm "rlp_header_len", nm "rlp_list_header_len"]

theorem pureSpecs_S1 (hC : X.code.lookup = guestCode) : PureSpecs σ X pureS1 := by
  intro f hf
  simp only [pureS1, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl
  · exact ⟨_, footRet_rlp_be_len hC⟩
  · exact ⟨_, footRet_header_len hC⟩
  · exact ⟨_, footRet_list_header_len hC⟩

theorem footRet_rlp_word_encoded_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_word_encoded_len") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn (pureSpecs_S1 hC) hC (d := Guest.Software.guestFn_rlp_word_encoded_len)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 127) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

theorem footRet_rlp_bytes_encoded_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_bytes_encoded_len") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn (pureSpecs_S1 hC) hC (d := Guest.Software.guestFn_rlp_bytes_encoded_len)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 125) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

theorem footRet_logs_encoded_bound (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "logs_encoded_bound") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn (pureSpecs_S1 hC) hC (d := Guest.Software.guestFn_logs_encoded_bound)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 834) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

def pureS2 : List MlS := pureS1 ++ [nm "rlp_word_encoded_len"]

theorem pureSpecs_S2 (hC : X.code.lookup = guestCode) : PureSpecs σ X pureS2 := by
  intro f hf
  simp only [pureS2, pureS1, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with (rfl | rfl | rfl) | rfl
  · exact ⟨_, footRet_rlp_be_len hC⟩
  · exact ⟨_, footRet_header_len hC⟩
  · exact ⟨_, footRet_list_header_len hC⟩
  · exact ⟨_, footRet_rlp_word_encoded_len hC⟩

theorem footRet_withdrawal_rlp_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "withdrawal_rlp_len") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn (pureSpecs_S2 hC) hC (d := Guest.Software.guestFn_withdrawal_rlp_len)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 837) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

/-! ## `encode_receipt` -/

def txN : MlS := nm "tx_type"
def succN : MlS := nm "succeeded"
def cgN : MlS := nm "cumulative_gas"
def boundN : MlS := nm "bound"

def erEnd : ProgHOL 64 :=
  .seq (callW (nm "rlp_finish_list") [lv startN, lv pN])
    (.seq (.ite (.cmp .notEqual (lv txN) (cw 0))
        (.seq (.storeByte (.op .sub [lv startN, cw 1]) (lv txN))
          (.return (.rstruct [.op .sub [lv startN, cw 1], .op .add [lv wN, cw 1]])))
        .skip)
      (.return (.rstruct [lv startN, lv wN])))

def erBloom : ProgHOL 64 :=
  .decCall bloomN .one (nm "alloc") [cw 256]
    (.seq (callD (nm "logs_bloom") [lv logsN, lv bloomN])
      (.seq (callW (nm "rlp_encode_bytes") [lv pN, lv bloomN, cw 256])
        (.seq (.assign .local pN (.op .add [lv pN, lv wN]))
          (.seq (callW (nm "encode_logs") [lv pN, lv logsN])
            (.seq (.assign .local pN (.op .add [lv pN, lv wN])) erEnd)))))

def erBody : ProgHOL 64 :=
  .decCall boundN .one (nm "logs_encoded_bound") [lv logsN]
    (.decCall bufN .one (nm "alloc") [.op .add [lv boundN, cw 400]]
      (.dec startN .one (.op .add [lv bufN, cw 1])
        (.dec pN .one (.op .add [lv startN, cw 9])
          (.dec wN .one (cw 0)
            (.seq (.ite (.cmp .notEqual (lv succN) (cw 0))
                (.seq (.storeByte (lv pN) (cw 1)) (.assign .local wN (cw 1)))
                (.seq (.storeByte (lv pN) (cw 128)) (.assign .local wN (cw 1))))
              (.seq (.assign .local pN (.op .add [lv pN, lv wN]))
                (.seq (callW (nm "rlp_encode_word") [lv pN, lv cgN])
                  (.seq (.assign .local pN (.op .add [lv pN, lv wN])) erBloom))))))))

theorem code_encode_receipt : guestCode (nm "encode_receipt") =
    some ([(txN, .one), (succN, .one), (cgN, .one), (logsN, .one)], erBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_encode_receipt =
      (nm "encode_receipt", [(txN, .one), (succN, .one), (cgN, .one), (logsN, .one)], erBody,
        .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 836) (by decide)) ⟨_, rfl⟩ h

theorem num_facts3 : heapEnd + 20 ≤ B9 := by
  unfold heapEnd B9 domTop
  decide

def Rc1 (h0 : Nat) (m : Locals) : Prop :=
  Bd m boundN 0 WW ∧ Bd m bufN h0 heapEnd ∧ Bd m startN (h0 + 1) (heapEnd + 1)

theorem rc1_w {h0 : Nat} {m : Locals} {v : ValueHOL 64} (h : Rc1 h0 m) :
    Rc1 h0 (m.update (wN, v)) :=
  ⟨bd_upd (by decide) h.1, bd_upd (by decide) h.2.1, bd_upd (by decide) h.2.2⟩

theorem rc1_w' {h0 : Nat} {m : Locals} {v : ValueHOL 64} (h : Rc1 h0 m) :
    Rc1 h0 (m.update (bloomN, v)) :=
  ⟨bd_upd (by decide) h.1, bd_upd (by decide) h.2.1, bd_upd (by decide) h.2.2⟩

theorem rc1_p {h0 : Nat} {m : Locals} {v : ValueHOL 64} (h : Rc1 h0 m) :
    Rc1 h0 (m.update (pN, v)) :=
  ⟨bd_upd (by decide) h.1, bd_upd (by decide) h.2.1, bd_upd (by decide) h.2.2⟩

theorem awSpec_encode_receipt {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hLB : AWSpec σ X C H (nm "logs_bloom") [] (fun vs _ h0 => OutPre h0 vs)
      (fun _ _ _ _ => True)) :
    AWSpec σ X C H (nm "encode_receipt") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  have hbody := lookupCode_body' code_encode_receipt hl
  subst hbody
  have hn := num_facts2
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hs62 : domTop < 2 ^ 62 := by decide
  have hwOK : ∀ f, f = nm "rlp_encode_word" ∨ f = nm "rlp_encode_bytes" ∨ f = nm "encode_logs" →
      WriterOK a X f := by
    intro f hf
    rcases hf with rfl | rfl | rfl
    · exact writerOK_word hK hC hA hT
    · exact writerOK_bytes hK hC hA hT
    · exact ⟨_, asp_writer' hK (footRet_encode_logs hC hA hT) (fun vs ⟨D, hD, h1, h2⟩ => ⟨D, hD, h2⟩),
        retKx_enc⟩
  refine hoareG_conseq (P := APre a (fun _ => True)) (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, trivial⟩) (fun _ _ _ _ h => h)
  unfold erBody
  -- bound = logs_encoded_bound(logs)
  refine hoareG_decCallAs' hK (asp_of_footRet hK (footRet_logs_encoded_bound hC)
    (fun vs x hx => hx.elim)) (Lk := fun m => Bd m boundN 0 WW) (L' := fun _ _ => False)
    (fun _ _ _ _ _ _ => trivial) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨b, rfl⟩ := val_of_shapeEq_one' hsh
    exact bd_wd _ _ _
  intro s
  -- buf = alloc(bound + 400)
  refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := fun m => Bd m boundN 0 WW ∧ Bd m bufN h0 heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s1 hs1 hP vs hvs callee
    obtain ⟨b, hb', -, -⟩ := hP.2
    rw [evs_cons (ev_add2 (ev_lw hb') (ev_cw _ 400)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s1 vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨bd_upd (by decide) hL, bd_new _ _ _ hq1 (by omega)⟩
  intro s2
  -- start = buf + 1
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s3 hs3 hL3 v3 hv3 hsh3
  obtain ⟨Bf, hBf, e1, e2⟩ := hL3.2
  rw [ev_add2 (ev_lw hBf) (ev_cw _ 1)] at hv3
  cases hv3
  have hBf1 : (Bf + BitVec.ofNat 64 1).toNat = Bf.toNat + 1 := toNat_addc (by omega)
  refine hoareG_preA (L' := Rc1 h0) ?_ (fun m hm => by
    subst hm
    exact ⟨bd_upd (by decide) hL3.1, bd_upd (by decide) hL3.2,
      bd_new _ _ _ (by omega) (by omega)⟩)
  -- p = start + 9
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  obtain ⟨St, hSt, f1, f2⟩ := hL4.2.2
  rw [ev_add2 (ev_lw hSt) (ev_cw _ 9)] at hv4
  cases hv4
  have hSt9 : (St + BitVec.ofNat 64 9).toNat = St.toNat + 9 := toNat_addc (by omega)
  refine hoareG_preA (L' := fun m => Rc1 h0 m ∧ Bd m pN h0 (heapEnd + 10)) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨bd_upd (by decide) hL4.1, bd_upd (by decide) hL4.2.1, bd_upd (by decide) hL4.2.2⟩,
      bd_new _ _ _ (by omega) (by omega)⟩)
  -- w = 0
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s5 hs5 hL5 v5 hv5 hsh5
  rw [ev_cw] at hv5
  cases hv5
  refine hoareG_preA (L' := fun m => (Rc1 h0 m ∧ Bd m pN h0 (heapEnd + 10))) ?_ (fun m hm => by
    subst hm
    exact ⟨rc1_w hL5.1, bd_upd (by decide) hL5.2⟩)
  have hstore : ∀ c : Nat, HoareG σ X (APre a (fun m => Rc1 h0 m ∧ Bd m pN h0 (heapEnd + 10)))
      (.seq (.storeByte (lv pN) (cw c)) (.assign .local wN (cw 1)))
      (AQ a (fun m => (Rc1 h0 m ∧ Bd m pN h0 (heapEnd + 10)) ∧
        m.lookup wN = some (.val (.word (BitVec.ofNat 64 1)))) (fun _ => True)) := fun c =>
    hoareG_seqA (L2 := fun m => Rc1 h0 m ∧ Bd m pN h0 (heapEnd + 10))
      (hoareG_storeByteA hK (fun s _ hL w hw => by
        obtain ⟨P, hP, h1, h2⟩ := hL.2
        rw [ev_lw hP] at hw
        cases hw
        exact h1))
      (hoareG_assignA hK fun s _ hL v hv => by
        rw [ev_cw] at hv
        cases hv
        exact ⟨⟨rc1_w hL.1, bd_upd (by decide) hL.2⟩, lookup_update_self _ _ _⟩)
  refine hoareG_seqA (L2 := fun m => (Rc1 h0 m ∧ Bd m pN h0 (heapEnd + 10)) ∧
    m.lookup wN = some (.val (.word (BitVec.ofNat 64 1)))) (hoareG_iteA (hstore 1) (hstore 128)) ?_
  -- p = p + w
  refine hoareG_seqA (L2 := fun m => Rc1 h0 m ∧ Bd m pN h0 B9) ?_ ?_
  · refine hoareG_assignA hK fun s7 _ hL7 v7 hv7 => ?_
    obtain ⟨P7, hP7, g1, g2⟩ := hL7.1.2
    rw [ev_add2 (ev_lw hP7) (ev_lw hL7.2)] at hv7
    cases hv7
    have hP71 : (P7 + BitVec.ofNat 64 1).toNat = P7.toNat + 1 := toNat_addc (by omega)
    exact ⟨rc1_p hL7.1.1, bd_new _ _ _ (by omega) (by have := num_facts3; omega)⟩
  refine hoareG_chain hK (L := Rc1 h0) (fun m v h => rc1_w h) (fun m W h => rc1_p h)
    (k := erBloom) ?_ [(nm "rlp_encode_word", [lv cgN])]
    (fun st hst => by simp at hst; rw [hst]; exact hwOK _ (Or.inl rfl))
  unfold erBloom
  -- bloom = alloc(256)
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := fun m => (Rc1 h0 m ∧ Bd m pN h0 B9) ∧ Bd m bloomN h0 heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s1 hs1 hP vs hvs callee
    rw [evs_cons (ev_cw _ 256) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s1 vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨⟨rc1_w' hL.1, bd_upd (by decide) hL.2⟩, bd_new _ _ _ hq1 (by omega)⟩
  intro s2
  -- logs_bloom(logs, bloom)
  refine hoareG_seqA (L2 := fun m => (Rc1 h0 m ∧ Bd m pN h0 B9) ∧ Bd m bloomN h0 heapEnd)
    (hoareG_callAs hK (asp_of_aw hK hLB (fun g hg => absurd hg (by simp))
      (fun vs s v t h => trivial)) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨Bo, hBo, h1, h2⟩ := hP3.2.2
    rw [ev_lw hBo] at e2
    cases e2
    exact ⟨Bo, rfl, h1, by have := hn.2.2.2; omega⟩
  -- the two writers, then the end
  refine hoareG_preA (L' := fun m => (Rc1 h0 m ∧ Bd m bloomN h0 heapEnd) ∧ Bd m pN h0 B9) ?_
    (fun m h => ⟨⟨h.1.1, h.2⟩, h.1.2⟩)
  refine hoareG_chain hK (L := fun m => Rc1 h0 m ∧ Bd m bloomN h0 heapEnd)
    (fun m v h => ⟨rc1_w h.1, bd_upd (by decide) h.2⟩)
    (fun m W h => ⟨rc1_p h.1, bd_upd (by decide) h.2⟩) (k := erEnd) ?_
    [(nm "rlp_encode_bytes", [lv bloomN, cw 256]), (nm "encode_logs", [lv logsN])]
    (fun st hst => by
      simp at hst
      rcases hst with h | h <;> rw [h]
      · exact hwOK _ (Or.inr (Or.inl rfl))
      · exact hwOK _ (Or.inr (Or.inr rfl)))
  unfold erEnd
  refine hoareG_seqA (L2 := fun m => ((Rc1 h0 m ∧ Bd m bloomN h0 heapEnd) ∧ Bd m pN h0 B9) ∧
      TWn (h0 + 1) startN m)
    (hoareG_callPtrA hK (asp_writer hK (footRet_finish_listA hC hA hT)) retKx_fin
      (lo := h0 + 1) (hi := heapEnd + 1) (Nat.le_succ _) (by have := hn.2.2.2; omega)
      (fun m h => h.1.1.2.2)
      (fun m v h => ⟨⟨rc1_w h.1.1, bd_upd (by decide) h.1.2⟩, bd_upd (by decide) h.2⟩)
      (by decide)) ?_
  refine hoareG_seqA (L2 := fun _ => True) (hoareG_iteA ?_ (hoareG_skipA (fun _ _ => trivial)))
    (hoareG_returnA hK (fun _ _ _ _ _ => trivial))
  refine hoareG_seqA (L2 := fun m => (((Rc1 h0 m ∧ Bd m bloomN h0 heapEnd) ∧ Bd m pN h0 B9) ∧
      TWn (h0 + 1) startN m)) (hoareG_storeByteA hK ?_) (hoareG_returnA hK (fun _ _ _ _ _ => trivial))
  intro s9 hs9 hL9 w hw
  obtain ⟨T, k, hT, -, h1, -⟩ := hL9.2
  rw [ev_sub2 (ev_lw hT) (ev_cw _ 1)] at hw
  cases hw
  show h0 ≤ (T - BitVec.ofNat 64 1).toNat
  rw [toNat_subc (by omega)]
  omega

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_encode_receipt
#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_logs_encoded_bound
