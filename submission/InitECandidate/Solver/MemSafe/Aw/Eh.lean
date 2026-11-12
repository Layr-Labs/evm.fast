import InitECandidate.Solver.MemSafe.Aw.PutU256

set_option autoImplicit false

/-!
# `encode_header` as an above-writer (target D)
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


def eb : MlS := nm "rlp_encode_bytes"
def ew : MlS := nm "rlp_encode_word"
def pu : MlS := nm "rlp_put_u256"

/-- `lds {1,1,1,1} (h + k)` -/
def ld4 (k : Nat) : ExpHOL 64 := .load (.comb [.one, .one, .one, .one]) (.op .add [lv hN, cw k])

/-- the steps after the first one, up to the optional last two -/
def ehSteps : List (MlS × List (ExpHOL 64)) :=
  [(eb, [ldk hN 16, cw 32]), (eb, [ldk hN 24, cw 20]), (eb, [ldk hN 32, cw 32]),
   (eb, [ldk hN 40, cw 32]), (eb, [ldk hN 48, cw 32]), (eb, [ldk hN 56, cw 256]),
   (pu, [ld4 64]), (ew, [ldk hN 96]), (ew, [ldk hN 104]), (ew, [ldk hN 112]),
   (ew, [ldk hN 120]), (eb, [ldk hN 128, ldk hN 136]), (eb, [ldk hN 144, cw 32]),
   (eb, [ldk hN 152, cw 8]), (pu, [ld4 160]), (eb, [ldk hN 192, cw 32]), (ew, [ldk hN 200]),
   (ew, [ldk hN 208]), (eb, [ldk hN 216, cw 32]), (eb, [ldk hN 224, cw 32])]

def ehOpt : ProgHOL 64 :=
  .ite (.cmp .notEqual (ldk hN 0) (cw 0))
    (chainP [(eb, [ldk hN 232, cw 32])]
      (.seq (callW ew [lv pN, ldk hN 240]) (.assign .local pN (.op .add [lv pN, lv wN]))))
    .skip

def ehTail : ProgHOL 64 :=
  .dec plN .one (.op .sub [lv pN, .op .add [lv bufN, cw 9]])
    (.decCall hlN .one (nm "rlp_list_header_len") [lv plN]
      (.dec startN .one (.op .sub [.op .add [lv bufN, cw 9], lv hlN])
        (.seq (callD (nm "rlp_encode_list_header") [lv startN, lv plN])
          (.return (.rstruct [lv startN, .op .add [lv plN, lv hlN]])))))

def ehBody : ProgHOL 64 :=
  .decCall bufN .one (nm "alloc") [cw 1024]
    (.dec pN .one (.op .add [lv bufN, cw 9])
      (.decCall wN .one eb [lv pN, ldk hN 8, cw 32]
        (.seq (.assign .local pN (.op .add [lv pN, lv wN]))
          (chainP ehSteps (.seq ehOpt ehTail)))))

theorem code_encode_header : guestCode (nm "encode_header") =
    some ([(hN, .one)], ehBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_encode_header =
      (nm "encode_header", [(hN, .one)], ehBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 229) (by decide)) ⟨_, rfl⟩ h

theorem ehSteps_names : ∀ st ∈ ehSteps, st.1 = eb ∨ st.1 = ew ∨ st.1 = pu := by
  decide

def Eh1 (h0 : Nat) (m : Locals) : Prop := Bd m bufN h0 heapEnd

theorem eh1_w {h0 : Nat} {m : Locals} {v : ValueHOL 64} (h : Eh1 h0 m) :
    Eh1 h0 (m.update (wN, v)) := bd_upd (by decide) h

theorem eh1_p {h0 : Nat} {m : Locals} {v : ValueHOL 64} (h : Eh1 h0 m) :
    Eh1 h0 (m.update (pN, v)) := bd_upd (by decide) h

theorem writerOK_put {a : AwE σ} (hK : AwOK a)
    (hPut : AWSpec σ X a.C a.H pu [] (fun vs _ h0 => PreWh h0 vs) (fun vs _ v _ => EncRetA vs v)) :
    WriterOK a X pu :=
  ⟨_, asp_of_aw hK hPut (fun g hg => absurd hg (by simp)) (fun vs s v t h => h), retKx_enc⟩

theorem awSpec_encode_header {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hPut : AWSpec σ X C H pu [] (fun vs _ h0 => PreWh h0 vs) (fun vs _ v _ => EncRetA vs v)) :
    AWSpec σ X C H (nm "encode_header") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_encode_header hl
  obtain ⟨Hh, rfl⟩ := val_of_shapeEq_one hA'
  have hn := num_facts2
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have hwOK : ∀ st ∈ ehSteps, WriterOK a X st.1 := by
    intro st hst
    rcases ehSteps_names st hst with h | h | h <;> rw [h]
    · exact writerOK_bytes hK hC hA hT
    · exact writerOK_word hK hC hA hT
    · exact writerOK_put hK hPut
  refine hoareG_conseq (P := APre a (fun _ => True)) (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, trivial⟩) (fun _ _ _ _ h => h)
  unfold ehBody
  -- buf = alloc(1024)
  refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := Eh1 h0) (L' := fun _ _ => False) ?_ ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 1024) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact bd_new _ _ _ hq1 (by omega)
  intro s
  -- p = buf + 9
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨Q, hq, hq1, hq2⟩ := hL2
  rw [ev_add2 (ev_lw hq) (ev_cw _ 9)] at hv2
  cases hv2
  have hQ9 : (Q + BitVec.ofNat 64 9).toNat = Q.toNat + 9 := toNat_addc (by omega)
  have hLp : ∀ (m : Locals) (W : BitVec 64), Eh1 h0 m → Eh1 h0 (m.update (pN, .val (.word W))) :=
    fun m W h => eh1_p h
  refine hoareG_preA (L' := fun m => Eh1 h0 m ∧ Bd m pN h0 B9) ?_ (fun m hm => by
    subst hm
    exact ⟨eh1_p ⟨Q, hq, hq1, hq2⟩, bd_new _ _ _ (by omega) (by omega)⟩)
  -- w = rlp_encode_bytes(p, ...)
  refine hoareG_decCallPtrA hK (asp_writer hK (footRet_encode_bytesA hC hA hT)) retKx_enc
    (lo := h0) (hi := B9) le_rfl hn.2.1 (L := fun m => Eh1 h0 m ∧ Bd m pN h0 B9)
    (L' := fun _ _ => False) (fun m h => h.2) (fun m v h => ⟨eh1_w h.1, bd_upd (by decide) h.2⟩)
    (by decide) ?_ (fun _ _ _ h => h.elim)
  intro s3
  have hadd : ∀ (m : Locals) (W : BitVec 64), (Eh1 h0 m ∧ Bd m pN h0 B9) → h0 ≤ W.toNat →
      W.toNat ≤ B0 → (Eh1 h0 (m.update (pN, .val (.word W))) ∧
        Bd (m.update (pN, .val (.word W))) pN h0 B9) :=
    fun m W hm h1 h2 => ⟨eh1_p hm.1, bd_new _ _ _ h1 (by omega)⟩
  refine hoareG_seqA (L2 := fun m => Eh1 h0 m ∧ Bd m pN h0 B9)
    (hoareG_addWA hK (x := pN) (y := pN) (lo := h0) hadd) ?_
  refine hoareG_chain hK (L := Eh1 h0) (fun m v h => eh1_w h) hLp ?_ ehSteps hwOK
  -- the optional last two, then the tail
  refine hoareG_seqA (L2 := fun m => Eh1 h0 m ∧ Bd m pN h0 B9) ?_ ?_
  · unfold ehOpt
    refine hoareG_ite ?_ (hoareG_pre (hoareG_skipA (fun m h => h)) (fun s _ h => h.1))
    refine hoareG_pre (P := APre a (fun m => Eh1 h0 m ∧ Bd m pN h0 B9)) ?_ (fun s _ h => h.1)
    refine hoareG_chain hK (L := Eh1 h0) (fun m v h => eh1_w h) hLp ?_ [(eb, [ldk hN 232, cw 32])]
      (fun st hst => by simp at hst; rw [hst]; exact writerOK_bytes hK hC hA hT)
    refine hoareG_seqA (L2 := fun m => (Eh1 h0 m ∧ Bd m pN h0 B9) ∧ TWn h0 pN m)
      (hoareG_callPtrA hK (asp_writer hK (footRet_encode_wordA hC hA hT)) retKx_w
        (lo := h0) (hi := B9) le_rfl hn.2.1 (fun m h => h.2)
        (fun m v h => ⟨eh1_w h.1, bd_upd (by decide) h.2⟩) (by decide)) ?_
    exact hoareG_addWA hK (x := pN) (y := pN) (lo := h0) hadd
  · unfold ehTail
    -- payload_len = p - (buf + 9)
    refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s4 hs4 hL4 v4 hv4 hsh4
    obtain ⟨PL, rfl⟩ := val_of_shapeEq_one hsh4
    refine hoareG_preA (L' := fun m => Eh1 h0 m ∧ Bd m plN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨bd_upd (by decide) hL4.1, bd_wd _ _ _⟩)
    -- hl = rlp_list_header_len(payload_len)
    refine hoareG_decCallAs' hK (asp_of_footRet hK (footRet_list_header_len hC)
      (fun vs x hx => hx.elim)) (Lk := fun m => (Eh1 h0 m ∧ Bd m plN 0 WW) ∧ Bd m hlN 1 9)
      (L' := fun _ _ => False) (fun _ _ _ _ _ _ => trivial) ?_ ?_ (fun _ _ _ h => h.elim)
    · intro s5 vs v st hL5 hvs hRet hsh
      obtain ⟨PL5, hpl, -, -⟩ := hL5.2
      obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
      rw [ev_lw hpl] at hv0
      cases hv0
      have hv := hRet PL5 rfl
      subst hv
      have hH := hdrLen_le PL5.isLt
      have hHH : (BitVec.ofNat 64 (hdrLen PL5.toNat)).toNat = hdrLen PL5.toNat := by
        rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      exact ⟨⟨bd_upd (by decide) hL5.1, bd_upd (by decide) hL5.2⟩,
        bd_new _ _ _ (by omega) (by omega)⟩
    intro s5
    -- start = buf + 9 - hl
    refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s6 hs6 hL6 v6 hv6 hsh6
    obtain ⟨Bf, hb, h1, h2⟩ := hL6.1.1
    obtain ⟨HL, hh, e1, e2⟩ := hL6.2
    rw [ev_sub2 (ev_add2 (ev_lw hb) (ev_cw _ 9)) (ev_lw hh)] at hv6
    cases hv6
    have hB9' : (Bf + BitVec.ofNat 64 9).toNat = Bf.toNat + 9 := toNat_addc (by omega)
    have hsub : (Bf + BitVec.ofNat 64 9 - HL).toNat = Bf.toNat + 9 - HL.toNat := by
      rw [BitVec.toNat_sub, hB9']
      have := HL.isLt
      omega
    refine hoareG_preA (L' := fun m => ((Eh1 h0 m ∧ Bd m plN 0 WW) ∧ Bd m hlN 1 9) ∧
        Bd m startN h0 B9) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨bd_upd (by decide) hL6.1.1, bd_upd (by decide) hL6.1.2⟩,
        bd_upd (by decide) hL6.2⟩, bd_new _ _ _ (by omega) (by omega)⟩)
    refine hoareG_seqA (L2 := fun _ => True) ?_ ?_
    · refine hoareG_callAs hK (asp_writer hK (footRet_encode_list_headerA hC hA hT)) ?_
        (fun _ _ _ _ _ _ _ => trivial)
      intro s7 hs7 hP7 vs hvs callee
      obtain ⟨St, hst, g1, g2⟩ := hP7.2.2
      obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
      rw [ev_lw hst] at hv0
      cases hv0
      exact ⟨St, rfl, g1, by omega⟩
    · exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_encode_header
