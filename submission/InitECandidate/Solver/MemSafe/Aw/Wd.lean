import InitECandidate.Solver.MemSafe.Aw.Chain

set_option autoImplicit false

/-!
# `encode_withdrawal_rlp` as an above-writer (target D)
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

def wdN : MlS := nm "wd"

def ewTail (e4 : ExpHOL 64) : ProgHOL 64 :=
  .seq (callW (nm "rlp_encode_word") [lv pN, e4])
    (.seq (.assign .local pN (.op .add [lv pN, lv wN]))
      (.decCall totN .one (nm "rlp_finish_list") [lv bufN, lv pN]
        (.return (.rstruct [lv bufN, lv totN]))))

def ewMid (e2 e3 e4 : ExpHOL 64) : ProgHOL 64 :=
  .seq (callW (nm "rlp_encode_word") [lv pN, e2])
    (.seq (.assign .local pN (.op .add [lv pN, lv wN]))
      (.seq (callW (nm "rlp_encode_bytes") [lv pN, e3, cw 20])
        (.seq (.assign .local pN (.op .add [lv pN, lv wN])) (ewTail e4))))

/-- The four `LD_LE64` arguments are left abstract (`e1`, `e2`, `e4`); `e3 = wd + 16`. -/
def ewBody (e1 e2 e3 e4 : ExpHOL 64) : ProgHOL 64 :=
  .decCall bufN .one (nm "alloc") [cw 64]
    (.dec pN .one (.op .add [lv bufN, cw 9])
      (.decCall wN .one (nm "rlp_encode_word") [lv pN, e1]
        (.seq (.assign .local pN (.op .add [lv pN, lv wN])) (ewMid e2 e3 e4))))

/-- The address `pre + ks` as the front end writes it (nested additions are flattened). -/
def addrE (pre : List (ExpHOL 64)) (ks : List Nat) : ExpHOL 64 :=
  match pre ++ ks.map cw with
  | [e] => e
  | l => .op .add l

def shl (e : ExpHOL 64) (k : Nat) : ExpHOL 64 := .shift .lsl e (cw k)

/-- `LD_LE64(pre)`. -/
def ldLe64 (pre : List (ExpHOL 64)) : ExpHOL 64 :=
  .op .or [.loadByte (addrE pre []), shl (.loadByte (addrE pre [1])) 8,
    shl (.loadByte (addrE pre [2])) 16, shl (.loadByte (addrE pre [3])) 24,
    shl (.op .or [.loadByte (addrE pre [4]), shl (.loadByte (addrE pre [4, 1])) 8,
      shl (.loadByte (addrE pre [4, 2])) 16, shl (.loadByte (addrE pre [4, 3])) 24]) 32]

theorem code_encode_withdrawal_rlp : guestCode (nm "encode_withdrawal_rlp") =
    some ([(wdN, .one)], ewBody (ldLe64 [lv wdN]) (ldLe64 [lv wdN, cw 8])
      (.op .add [lv wdN, cw 16]) (ldLe64 [lv wdN, cw 36]), .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_encode_withdrawal_rlp =
      (nm "encode_withdrawal_rlp", [(wdN, .one)], ewBody (ldLe64 [lv wdN]) (ldLe64 [lv wdN, cw 8])
      (.op .add [lv wdN, cw 16]) (ldLe64 [lv wdN, cw 36]), .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 838) (by decide)) ⟨_, rfl⟩ h

def Lw1 (h0 : Nat) (m : Locals) : Prop :=
  Bd m wdN 0 WW ∧ Bd m bufN h0 heapEnd

def Lw2 (h0 : Nat) (m : Locals) : Prop := Lw1 h0 m ∧ Bd m pN h0 B9

theorem lw2_w {h0 : Nat} {m : Locals} {v : ValueHOL 64} (h : Lw2 h0 m) :
    Lw2 h0 (m.update (wN, v)) :=
  ⟨⟨bd_upd (by decide) h.1.1, bd_upd (by decide) h.1.2⟩, bd_upd (by decide) h.2⟩

theorem lw2_p {h0 : Nat} {m : Locals} {W : BitVec 64} (h : Lw2 h0 m) (h1 : h0 ≤ W.toNat)
    (h2 : W.toNat ≤ B9) : Lw2 h0 (m.update (pN, .val (.word W))) :=
  ⟨⟨bd_upd (by decide) h.1.1, bd_upd (by decide) h.1.2⟩, bd_new _ _ _ h1 h2⟩

theorem awSpec_encode_withdrawal_rlp {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "encode_withdrawal_rlp") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_encode_withdrawal_rlp hl
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one hA'
  have hn := num_facts2
  have hn1 := num_facts
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  refine hoareG_conseq (P := APre a (fun m => Bd m wdN 0 WW))
    (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, bd_wide (by rw [hloc]; exact hla)⟩) (fun _ _ _ _ h => h)
  unfold ewBody
  -- buf = alloc(64)
  refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := Lw1 h0) (L' := fun _ _ => False) ?_ ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨bd_upd (by decide) hL, bd_new _ _ _ hq1 (by omega)⟩
  intro s
  -- p = buf + 9
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨Q, hq, hq1, hq2⟩ := hL2.2
  rw [ev_add2 (ev_lw hq) (ev_cw _ 9)] at hv2
  cases hv2
  have hQ9 : (Q + BitVec.ofNat 64 9).toNat = Q.toNat + 9 := toNat_addc (by omega)
  refine hoareG_preA (L' := Lw2 h0) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨bd_upd (by decide) hL2.1, bd_upd (by decide) hL2.2⟩, bd_new _ _ _ (by omega) (by omega)⟩)
  -- w = rlp_encode_word(p, e1)
  refine hoareG_decCallPtrA hK (asp_writer hK (footRet_encode_wordA hC hA hT)) retKx_w
    (lo := h0) (hi := B9) le_rfl hn.2.1 (L := Lw2 h0) (L' := fun _ _ => False)
    (fun m h => h.2) (fun m v h => lw2_w h) (by decide) ?_ (fun _ _ _ h => h.elim)
  intro s3
  have hadd : ∀ (m : Locals) (W : BitVec 64), Lw2 h0 m → h0 ≤ W.toNat → W.toNat ≤ B0 →
      Lw2 h0 (m.update (pN, .val (.word W))) := fun m W hm h1 h2 => lw2_p hm h1 (by omega)
  refine hoareG_seqA (L2 := Lw2 h0) (hoareG_addWA hK (x := pN) (y := pN) (lo := h0) hadd) ?_
  unfold ewMid
  refine hoareG_seqA (L2 := fun m => Lw2 h0 m ∧ TWn h0 pN m)
    (hoareG_callPtrA hK (asp_writer hK (footRet_encode_wordA hC hA hT)) retKx_w
      (lo := h0) (hi := B9) le_rfl hn.2.1 (fun m h => h.2) (fun m v h => lw2_w h) (by decide)) ?_
  refine hoareG_seqA (L2 := Lw2 h0) (hoareG_addWA hK (x := pN) (y := pN) (lo := h0) hadd) ?_
  refine hoareG_seqA (L2 := fun m => Lw2 h0 m ∧ TWn h0 pN m)
    (hoareG_callPtrA hK (asp_writer hK (footRet_encode_bytesA hC hA hT)) retKx_enc
      (lo := h0) (hi := B9) le_rfl hn.2.1 (fun m h => h.2) (fun m v h => lw2_w h) (by decide)) ?_
  refine hoareG_seqA (L2 := Lw2 h0) (hoareG_addWA hK (x := pN) (y := pN) (lo := h0) hadd) ?_
  unfold ewTail
  refine hoareG_seqA (L2 := fun m => Lw2 h0 m ∧ TWn h0 pN m)
    (hoareG_callPtrA hK (asp_writer hK (footRet_encode_wordA hC hA hT)) retKx_w
      (lo := h0) (hi := B9) le_rfl hn.2.1 (fun m h => h.2) (fun m v h => lw2_w h) (by decide)) ?_
  refine hoareG_seqA (L2 := Lw2 h0) (hoareG_addWA hK (x := pN) (y := pN) (lo := h0) hadd) ?_
  -- total = rlp_finish_list(buf, p)
  refine hoareG_decCallAs' hK (asp_writer hK (footRet_finish_listA hC hA hT))
    (Lk := fun _ => True) (L' := fun _ _ => False) ?_ (fun _ _ _ _ _ _ _ _ => trivial) ?_
    (fun _ _ _ h => h.elim)
  · intro s4 hs4 hP4 vs hvs callee
    obtain ⟨Bf, hb, h1, h2⟩ := hP4.2.1.2
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hb] at hv0
    cases hv0
    exact ⟨Bf, rfl, h1, by omega⟩
  · intro s4
    exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_encode_withdrawal_rlp
