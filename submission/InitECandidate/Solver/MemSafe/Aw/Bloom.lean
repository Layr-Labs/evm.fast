import InitECandidate.Solver.MemSafe.Aw.PutU256

set_option autoImplicit false

/-!
# `add_to_bloom`, `logs_bloom`, `encode_receipt` as above-writers (target D)
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

def bloomN : MlS := nm "bloom"
def entryN : MlS := nm "entry"
def idxN : MlS := nm "idx"
def bitN : MlS := nm "bit"
def biN : MlS := nm "bit_index"
def byiN : MlS := nm "byte_index"
def bvN : MlS := nm "bv"

def abLoop : ProgHOL 64 :=
  .dec bitN .one
      (.op .and [.op .or [.shift .lsl (.loadByte (.op .add [lv hN, lv idxN])) (cw 8),
        .loadByte (.op .add [lv hN, lv idxN, cw 1])], cw 2047])
    (.dec biN .one (.op .sub [cw 2047, lv bitN])
      (.dec byiN .one (.shift .lsr (lv biN) (cw 3))
        (.dec bvN .one (.shift .lsl (cw 1) (.op .sub [cw 7, .op .and [lv biN, cw 7]]))
          (.seq (.storeByte (.op .add [lv bloomN, lv byiN])
              (.op .or [.loadByte (.op .add [lv bloomN, lv byiN]), lv bvN]))
            (.assign .local idxN (.op .add [lv idxN, cw 2]))))))

def abBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall hN .one (nm "alloc") [cw 32]
      (.seq (callD (nm "keccak256") [lv entryN, lv nN, lv hN])
        (.dec idxN .one (cw 0)
          (.seq (.while (.cmp .less (lv idxN) (cw 6)) abLoop)
            (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))))))

theorem code_add_to_bloom : guestCode (nm "add_to_bloom") =
    some ([(bloomN, .one), (entryN, .one), (nN, .one)], abBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_add_to_bloom =
      (nm "add_to_bloom", [(bloomN, .one), (entryN, .one), (nN, .one)], abBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 831) (by decide)) ⟨_, rfl⟩ h

def Ab1 (h0 p0hp : Nat) (m : Locals) : Prop := Bd m bloomN h0 (2 ^ 60) ∧ MkB p0hp markN m

theorem ab1_upd {h0 p0hp : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64} (h1 : x ≠ bloomN)
    (h2 : x ≠ markN) (h : Ab1 h0 p0hp m) : Ab1 h0 p0hp (m.update (x, v)) :=
  ⟨bd_upd h1 h.1, mkb_upd h2 h.2⟩

theorem ab1_res {h0 p0hp : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ bloomN) (h2 : x ≠ markN) (h : Ab1 h0 p0hp m) : Ab1 h0 p0hp (m.resVarEq (x, o)) := by
  obtain ⟨⟨B, hB, a1, a2⟩, ⟨w, hw, b1, b2, b3⟩⟩ := h
  exact ⟨⟨B, by rw [lookup_resVarEq_ne _ _ h1]; exact hB, a1, a2⟩,
    ⟨w, by rw [lookup_resVarEq_ne _ _ h2]; exact hw, b1, b2, b3⟩⟩

def Jb (h0 p0hp : Nat) (m : Locals) : Prop := Ab1 h0 p0hp m ∧ Bd m idxN 0 7

theorem jb_upd {h0 p0hp : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64} (h1 : x ≠ bloomN)
    (h2 : x ≠ markN) (h3 : x ≠ idxN) (h : Jb h0 p0hp m) : Jb h0 p0hp (m.update (x, v)) :=
  ⟨ab1_upd h1 h2 h.1, bd_upd h3 h.2⟩

theorem jb_res {h0 p0hp : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ bloomN) (h2 : x ≠ markN) (h3 : x ≠ idxN) (h : Jb h0 p0hp m) :
    Jb h0 p0hp (m.resVarEq (x, o)) := ⟨ab1_res h1 h2 h.1, bd_res h3 h.2⟩

theorem lt6_of_cond {t : State σ} {I : BitVec 64}
    (hI : t.locals.lookup idxN = some (.val (.word I))) (h7 : I.toNat ≤ 7)
    (hc : CondTrue t (.cmp .less (lv idxN) (cw 6))) : I.toNat < 6 := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hI] at hx
  cases hx
  rw [ev_cw] at hy
  cases hy
  have := less_small (by omega) (by simp) hxy
  simp at this
  exact this

theorem awSpec_add_to_bloom {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hKec : CSumm σ X C H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ []) :
    AWSpec σ X C H (nm "add_to_bloom") [] (fun vs _ h0 => PreWh h0 vs) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Be, Cn, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_add_to_bloom (by decide) (by decide) (by decide) hl
  obtain ⟨Bl, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨D1, hD1, hd1, hd2⟩ := hPre
  have hBl : Bl = D1 := Option.some.inj hD1
  subst hBl
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hs62 : domTop < 2 ^ 62 := by decide
  refine hoareG_conseq (P := APre a (fun m => Bd m bloomN h0 (2 ^ 60)))
    (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, Bl, by rw [hloc]; exact hla, hd1, hd2⟩) (fun _ _ _ _ h => h)
  unfold abBody
  -- mark
  refine hoareG_decCallAs' hK (asp_mark hK hC) (Lk := Ab1 h0 p.hp) (L' := fun _ _ => False)
    ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨bd_upd (by decide) hL, w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s
  -- h = alloc(32)
  refine hoareG_decCallAs hK (asp_alloc hK hC) (L := Ab1 h0 p.hp) (L' := fun _ _ => False) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 32) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  intro s2 vs2 v2 st2 hs2 hL2 hvs2 hI2 hRet2 hsh2
  obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet2
  rw [evs_cons (ev_cw _ 32) evs_nil] at hvs2
  cases hvs2
  have hn32 : (BitVec.ofNat 64 32).toNat = 32 := by simp
  rw [hn32] at hq3
  have hL3 : Ab1 h0 p.hp (s2.locals.update (hN, .val (.word q))) :=
    ab1_upd (by decide) (by decide) hL2
  -- keccak256(entry, n, h)
  refine hoareG_seqP (L2 := Ab1 h0 p.hp) ?_ ?_
  · refine hoareG_callAsP hK (asp_of_cs hK hKec rfl (fun g hg => absurd hg (by simp)))
      (P := fun t => t = setVarHOLFinite hN (.val (.word q)) { st2 with locals := s2.locals })
      (L := Ab1 h0 p.hp) ?_ ?_ (fun _ _ _ _ hL _ _ => hL)
    · intro t ht htt
      subst htt
      exact ⟨awInv_same hK hI2 rfl rfl rfl rfl, hL3⟩
    · intro t ht htt vs3 hvs3 callee
      subst htt
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs3
      rw [ev_lw (lk_set_self _ _ _)] at e3
      cases e3
      refine ⟨rfl, p'', (AllocImpl.ptrsOf_congr (s := st2) rfl).trans hp'', ?_⟩
      intro i pt v hpt hv
      cases i with
      | zero =>
          have : pt = PT.any := by simpa using hpt.symm
          subst this
          trivial
      | succ j =>
          cases j with
          | zero =>
              have : pt = PT.any := by simpa using hpt.symm
              subst this
              trivial
          | succ k =>
              cases k with
              | zero =>
                  have : pt = PT.buf 32 := by simpa using hpt.symm
                  subst this
                  have hv' : v = .val (.word q) := by simpa using hv.symm
                  subst hv'
                  exact ⟨q, rfl, hq1, by omega⟩
              | succ m => simp at hpt
  -- idx = 0
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  rw [ev_cw] at hv4
  cases hv4
  refine hoareG_preA (L' := Jb h0 p.hp) ?_ (fun m hm => by
    subst hm
    exact ⟨ab1_upd (by decide) (by decide) hL4, bd_new _ _ _ (by simp) (by simp)⟩)
  refine hoareG_seqA (L2 := Jb h0 p.hp) ?_ ?_
  · refine hoareG_whileA hK (J := Jb h0 p.hp) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (fun m => Ab1 h0 p.hp m ∧ Bd m idxN 0 5)) ?_
      (fun s hs ⟨hP, hc⟩ => ⟨hP.1, hP.2.1, by
        obtain ⟨I, hI, h1, h2⟩ := hP.2.2
        exact ⟨I, hI, h1, by have := lt6_of_cond hI h2 hc; omega⟩⟩)
    unfold abLoop
    have hout : ∀ (m m' : Locals), Jb h0 p.hp m' → ∀ x : MlS, x ≠ bloomN → x ≠ markN → x ≠ idxN →
        Jb h0 p.hp (m'.resVarEq (x, m.lookup x)) :=
      fun m m' h x h1 h2 h3 => jb_res h1 h2 h3 h
    -- bit
    refine hoareG_decA hK (L' := fun _ m' => Jb h0 p.hp m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide))
    intro s5 hs5 hL5 v5 hv5 hsh5
    obtain ⟨w5, rfl, hw5⟩ := ev_and_le hv5
    refine hoareG_preA (L' := fun m => (Ab1 h0 p.hp m ∧ Bd m idxN 0 5) ∧ Bd m bitN 0 2047) ?_
      (fun m hm => by
        subst hm
        exact ⟨⟨ab1_upd (by decide) (by decide) hL5.1, bd_upd (by decide) hL5.2⟩,
          bd_new _ _ _ (Nat.zero_le _) hw5⟩)
    -- bit_index
    refine hoareG_decA hK (L' := fun _ m' => Jb h0 p.hp m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide))
    intro s6 hs6 hL6 v6 hv6 hsh6
    obtain ⟨W6, hW6, -, hW6'⟩ := hL6.2
    rw [ev_sub2 (ev_cw _ 2047) (ev_lw hW6)] at hv6
    cases hv6
    have hbi := toNat_sub_small hW6'
    refine hoareG_preA (L' := fun m => ((Ab1 h0 p.hp m ∧ Bd m idxN 0 5) ∧ Bd m bitN 0 2047) ∧
        Bd m biN 0 2047) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨ab1_upd (by decide) (by decide) hL6.1.1, bd_upd (by decide) hL6.1.2⟩,
        bd_upd (by decide) hL6.2⟩, bd_new _ _ _ (Nat.zero_le _) (by omega)⟩)
    -- byte_index
    refine hoareG_decA hK (L' := fun _ m' => Jb h0 p.hp m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide))
    intro s7 hs7 hL7 v7 hv7 hsh7
    obtain ⟨W7, hW7, -, hW7'⟩ := hL7.2
    rw [ev_lsr3 hW7] at hv7
    cases hv7
    have hby : (W7 >>> (3 : Nat)).toNat ≤ 255 := by
      rw [BitVec.toNat_ushiftRight]
      simp only [Nat.shiftRight_eq_div_pow]
      omega
    refine hoareG_preA (L' := fun m => (((Ab1 h0 p.hp m ∧ Bd m idxN 0 5) ∧ Bd m bitN 0 2047) ∧
        Bd m biN 0 2047) ∧ Bd m byiN 0 255) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨⟨ab1_upd (by decide) (by decide) hL7.1.1.1, bd_upd (by decide) hL7.1.1.2⟩,
        bd_upd (by decide) hL7.1.2⟩, bd_upd (by decide) hL7.2⟩,
        bd_new _ _ _ (Nat.zero_le _) hby⟩)
    -- bv
    refine hoareG_decA hK (L' := fun _ m' => Jb h0 p.hp m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide))
    intro s8 hs8 hL8 v8 hv8 hsh8
    obtain ⟨X8, rfl⟩ := val_of_shapeEq_one hsh8
    refine hoareG_preA (L' := fun m => ((((Ab1 h0 p.hp m ∧ Bd m idxN 0 5) ∧ Bd m bitN 0 2047) ∧
        Bd m biN 0 2047) ∧ Bd m byiN 0 255) ∧ Bd m bvN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨⟨⟨ab1_upd (by decide) (by decide) hL8.1.1.1.1, bd_upd (by decide) hL8.1.1.1.2⟩,
        bd_upd (by decide) hL8.1.1.2⟩, bd_upd (by decide) hL8.1.2⟩, bd_upd (by decide) hL8.2⟩,
        bd_wd _ _ _⟩)
    refine hoareG_seqA (L2 := fun m => ((((Ab1 h0 p.hp m ∧ Bd m idxN 0 5) ∧ Bd m bitN 0 2047) ∧
        Bd m biN 0 2047) ∧ Bd m byiN 0 255) ∧ Bd m bvN 0 WW) (hoareG_storeByteA hK ?_) ?_
    · intro s9 hs9 hL9 w hw
      obtain ⟨Bl, hBl, h1, h2⟩ := hL9.1.1.1.1.1.1
      obtain ⟨Yb, hYb, -, h4⟩ := hL9.1.2
      rw [ev_add2 (ev_lw hBl) (ev_lw hYb)] at hw
      cases hw
      rw [toNat_add2 (by omega)]
      omega
    · refine hoareG_assignA hK fun s9 _ hL9 v9 hv9 => ?_
      obtain ⟨I, hI, h1, h2⟩ := hL9.1.1.1.1.2
      rw [ev_add2 (ev_lw hI) (ev_cw _ 2)] at hv9
      cases hv9
      have hI2 : (I + BitVec.ofNat 64 2).toNat = I.toNat + 2 := toNat_addc (by omega)
      exact ⟨ab1_upd (by decide) (by decide) hL9.1.1.1.1.1,
        bd_new _ _ _ (by omega) (by omega)⟩
  · refine hoareG_seqA (L2 := fun _ => True)
      (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ _ _ _ => trivial)) ?_
    · intro s5 hs5 hP5 vs hvs callee
      obtain ⟨w, hw, h1, h2, h3⟩ := hP5.2.1.2
      rw [evs_cons (ev_lw hw) evs_nil] at hvs
      cases hvs
      exact ⟨w, rfl, h1, h2, h3⟩
    · exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

def lbInner : ProgHOL 64 :=
  .seq (callD (nm "add_to_bloom") [lv outN,
      .op .add [ldk logN 8, .panop .mul [lv jN, cw 32]], cw 32])
    (.assign .local jN (.op .add [lv jN, cw 1]))

def lbOuter : ProgHOL 64 :=
  .dec logN .one (.load .one (.op .add [lv pN, .panop .mul [lv iN, cw 8]]))
    (.seq (callD (nm "add_to_bloom") [lv outN, ldk logN 0, cw 20])
      (.dec ntN .one (ldk logN 16)
        (.dec jN .one (cw 0)
          (.seq (.while (.cmp .less (lv jN) (lv ntN)) lbInner)
            (.assign .local iN (.op .add [lv iN, cw 1]))))))

def lbBody : ProgHOL 64 :=
  .seq (callD (nm "memzero") [lv outN, cw 256])
    (.dec nN .one (ldk logsN 8)
      (.dec pN .one (ldk logsN 0)
        (.dec iN .one (cw 0)
          (.seq (.while (.cmp .less (lv iN) (lv nN)) lbOuter) (.return (cw 0))))))

theorem code_logs_bloom : guestCode (nm "logs_bloom") =
    some ([(logsN, .one), (outN, .one)], lbBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_logs_bloom =
      (nm "logs_bloom", [(logsN, .one), (outN, .one)], lbBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 832) (by decide)) ⟨_, rfl⟩ h

def OutPre (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O : BitVec 64, argW vs 1 = some O ∧ h0 ≤ O.toNat ∧ O.toNat ≤ 2 ^ 60

def Lb1 (h0 : Nat) (m : Locals) : Prop :=
  Bd m outN h0 (2 ^ 60) ∧ Bd m nN 0 WW ∧ Bd m pN 0 WW ∧ Bd m iN 0 WW

theorem lb1_upd {h0 : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64} (h1 : x ≠ outN)
    (h2 : x ≠ nN) (h3 : x ≠ pN) (h4 : x ≠ iN) (h : Lb1 h0 m) : Lb1 h0 (m.update (x, v)) :=
  ⟨bd_upd h1 h.1, bd_upd h2 h.2.1, bd_upd h3 h.2.2.1, bd_upd h4 h.2.2.2⟩

theorem lb1_res {h0 : Nat} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)} (h1 : x ≠ outN)
    (h2 : x ≠ nN) (h3 : x ≠ pN) (h4 : x ≠ iN) (h : Lb1 h0 m) :
    Lb1 h0 (m.resVarEq (x, o)) :=
  ⟨bd_res h1 h.1, bd_res h2 h.2.1, bd_res h3 h.2.2.1, bd_res h4 h.2.2.2⟩

def Lb2 (h0 : Nat) (m : Locals) : Prop :=
  Lb1 h0 m ∧ Bd m logN 0 WW ∧ Bd m ntN 0 WW ∧ Bd m jN 0 WW

theorem lb2_upd {h0 : Nat} {m : Locals} {x : MlS} {v : ValueHOL 64} (h1 : x ≠ outN)
    (h2 : x ≠ nN) (h3 : x ≠ pN) (h4 : x ≠ iN) (h5 : x ≠ logN) (h6 : x ≠ ntN) (h7 : x ≠ jN)
    (h : Lb2 h0 m) : Lb2 h0 (m.update (x, v)) :=
  ⟨lb1_upd h1 h2 h3 h4 h.1, bd_upd h5 h.2.1, bd_upd h6 h.2.2.1, bd_upd h7 h.2.2.2⟩

theorem awSpec_logs_bloom {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hAdd : AWSpec σ X C H (nm "add_to_bloom") [] (fun vs _ h0 => PreWh h0 vs)
      (fun _ _ _ _ => True)) :
    AWSpec σ X C H (nm "logs_bloom") [] (fun vs _ h0 => OutPre h0 vs) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bo, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_logs_bloom (by decide) hl
  obtain ⟨Lg, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Ov, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : Ov = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hs62 : domTop < 2 ^ 62 := by decide
  have hadd := asp_of_aw hK hAdd (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  refine hoareG_conseq (P := APre a (fun m => Bd m outN h0 (2 ^ 60)))
    (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, Ov, by rw [hloc]; exact hlb, ho1, ho2⟩) (fun _ _ _ _ h => h)
  unfold lbBody
  refine hoareG_seqA (L2 := fun m => Bd m outN h0 (2 ^ 60))
    (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s hs hP vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨Ob, hOb, h1, h2⟩ := hP.2
    rw [ev_lw hOb] at e1
    cases e1
    rw [ev_cw] at e2
    cases e2
    exact ⟨Ob, BitVec.ofNat 64 256, rfl, rfl, h1, by omega⟩
  -- n, p, i
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨N2, rfl⟩ := val_of_shapeEq_one hsh2
  refine hoareG_preA (L' := fun m => Bd m outN h0 (2 ^ 60) ∧ Bd m nN 0 WW) ?_ (fun m hm => by
    subst hm
    exact ⟨bd_upd (by decide) hL2, bd_wd _ _ _⟩)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s3 hs3 hL3 v3 hv3 hsh3
  obtain ⟨P3, rfl⟩ := val_of_shapeEq_one hsh3
  refine hoareG_preA (L' := fun m => (Bd m outN h0 (2 ^ 60) ∧ Bd m nN 0 WW) ∧ Bd m pN 0 WW) ?_
    (fun m hm => by
      subst hm
      exact ⟨⟨bd_upd (by decide) hL3.1, bd_upd (by decide) hL3.2⟩, bd_wd _ _ _⟩)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  rw [ev_cw] at hv4
  cases hv4
  refine hoareG_preA (L' := Lb1 h0) ?_ (fun m hm => by
    subst hm
    exact ⟨bd_upd (by decide) hL4.1.1, bd_upd (by decide) hL4.1.2, bd_upd (by decide) hL4.2,
      bd_wd _ _ _⟩)
  refine hoareG_seqA (L2 := Lb1 h0) ?_ ?_
  · refine hoareG_whileA hK (J := Lb1 h0) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (Lb1 h0)) ?_ (fun s _ h => h.1)
    unfold lbOuter
    have hout : ∀ (m m' : Locals), Lb1 h0 m' → ∀ x : MlS, x ≠ outN → x ≠ nN → x ≠ pN → x ≠ iN →
        Lb1 h0 (m'.resVarEq (x, m.lookup x)) := fun m m' h x h1 h2 h3 h4 => lb1_res h1 h2 h3 h4 h
    -- log
    refine hoareG_decA hK (L' := fun _ m' => Lb1 h0 m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide) (by decide))
    intro s5 hs5 hL5 v5 hv5 hsh5
    obtain ⟨X5, rfl⟩ := val_of_shapeEq_one hsh5
    refine hoareG_preA (L' := fun m => Lb1 h0 m ∧ Bd m logN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨lb1_upd (by decide) (by decide) (by decide) (by decide) hL5, bd_wd _ _ _⟩)
    refine hoareG_seqA (L2 := fun m => Lb1 h0 m ∧ Bd m logN 0 WW)
      (hoareG_callAs hK hadd ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
    · intro s6 hs6 hP6 vs hvs callee
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      obtain ⟨Ob, hOb, h1, h2⟩ := hP6.2.1.1
      rw [ev_lw hOb] at e1
      cases e1
      exact ⟨Ob, rfl, h1, h2⟩
    -- nt, j
    refine hoareG_decA hK (L' := fun _ m' => Lb1 h0 m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide) (by decide))
    intro s7 hs7 hL7 v7 hv7 hsh7
    obtain ⟨X7, rfl⟩ := val_of_shapeEq_one hsh7
    refine hoareG_preA (L' := fun m => (Lb1 h0 m ∧ Bd m logN 0 WW) ∧ Bd m ntN 0 WW) ?_
      (fun m hm => by
        subst hm
        exact ⟨⟨lb1_upd (by decide) (by decide) (by decide) (by decide) hL7.1,
          bd_upd (by decide) hL7.2⟩, bd_wd _ _ _⟩)
    refine hoareG_decA hK (L' := fun _ m' => Lb1 h0 m') ?_
      (fun m m' _ h => hout m m' h _ (by decide) (by decide) (by decide) (by decide))
    intro s8 hs8 hL8 v8 hv8 hsh8
    rw [ev_cw] at hv8
    cases hv8
    refine hoareG_preA (L' := Lb2 h0) ?_ (fun m hm => by
      subst hm
      exact ⟨lb1_upd (by decide) (by decide) (by decide) (by decide) hL8.1.1,
        bd_upd (by decide) hL8.1.2, bd_upd (by decide) hL8.2, bd_wd _ _ _⟩)
    refine hoareG_seqA (L2 := Lb2 h0) ?_ ?_
    · refine hoareG_whileA hK (J := Lb2 h0) ?_ (fun s _ h _ => h)
      refine hoareG_pre (P := APre a (Lb2 h0)) ?_ (fun s _ h => h.1)
      unfold lbInner
      refine hoareG_seqA (L2 := Lb2 h0) (hoareG_callAs hK hadd ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
      · intro s9 hs9 hP9 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨Ob, hOb, h1, h2⟩ := hP9.2.1.1
        rw [ev_lw hOb] at e1
        cases e1
        exact ⟨Ob, rfl, h1, h2⟩
      · refine hoareG_assignA hK fun s9 _ hL9 v9 hv9 => ?_
        obtain ⟨Jj, hJ, -, -⟩ := hL9.2.2.2
        rw [ev_add2 (ev_lw hJ) (ev_cw _ 1)] at hv9
        cases hv9
        exact ⟨lb1_upd (by decide) (by decide) (by decide) (by decide) hL9.1,
          bd_upd (by decide) hL9.2.1, bd_upd (by decide) hL9.2.2.1, bd_wd _ _ _⟩
    · refine hoareG_assignA hK fun s9 _ hL9 v9 hv9 => ?_
      obtain ⟨Ii, hI, -, -⟩ := hL9.1.2.2.2
      rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv9
      cases hv9
      exact ⟨bd_upd (by decide) hL9.1.1, bd_upd (by decide) hL9.1.2.1,
        bd_upd (by decide) hL9.1.2.2.1, bd_wd _ _ _⟩
  · exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_add_to_bloom
#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_logs_bloom
