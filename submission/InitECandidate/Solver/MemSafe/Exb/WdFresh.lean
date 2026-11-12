import InitECandidate.Solver.MemSafe.Exb.PhDefs

/-!
# `encode_withdrawal_rlp`: the result lies in the block it allocated

`funSpec_wdFresh : HypWdFresh σ`. `buf = alloc(64)`, `p = buf + 9`, then three words (`≤ 9` each) and 20 bytes (`21`), `rlp_finish_list(buf, p)` returns `hl + payload` with
`payload = p - (buf + 9) ≤ 48` and `hl ≤ 9`, so `total ≤ 57`. A value proof over the writers' `FootRet` specs; no `G` needed.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- The heap pointer is fixed from the allocation on; the block fits below it. -/
def WIn (B : BitVec 64) (HQ : Ptrs) (t : State σ) : Prop :=
  ptrsOf t = some HQ ∧ B.toNat + 64 ≤ HQ.hp ∧ HQ.Ordered

def IP (B : BitVec 64) (HQ : Ptrs) (d : Nat) (t : State σ) : Prop :=
  WIn B HQ t ∧ ∃ P : BitVec 64, Trie.LV [(Aw.bufN, Wv B), (Aw.pN, Wv P)] t.locals ∧ B.toNat + 9 ≤ P.toNat ∧ P.toNat ≤ B.toNat + 9 + d

def IQ (B : BitVec 64) (HQ : Ptrs) (d nm : Nat) (t : State σ) : Prop :=
  WIn B HQ t ∧ ∃ (P : BitVec 64) (n : Nat), Trie.LV [(wN, Wv (BitVec.ofNat 64 n)), (Aw.bufN, Wv B), (Aw.pN, Wv P)] t.locals ∧
    B.toNat + 9 ≤ P.toNat ∧ P.toNat ≤ B.toNat + 9 + d ∧ n ≤ nm

def WP (I : State σ → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → I t) ∧ ∀ r', r = some r' → Abn r'

/-- The result. -/
def WOut (hp0 : Nat) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ (q' : Ptrs) (B T : BitVec 64), ptrsOf t = some q' ∧ v = .rStruct [Wv B, Wv T] ∧
    B.toNat % 8 = 0 ∧ hp0 ≤ B.toNat ∧ B.toNat + 64 ≤ q'.hp ∧ T.toNat ≤ 64

theorem wp_out {hp0 : Nat} {I : State σ → Prop} {r : Option (PanSemResultExact 64)} {t : State σ} (hr : r ≠ none)
    (h : WP I r t) : WOut hp0 r t := by
  intro v hv
  exact absurd (h.2 _ hv) (fun ha => Node.abn_ne_ret ha v rfl)

theorem wd_top {B : BitVec 64} {HQ : Ptrs} (h : B.toNat + 64 ≤ HQ.hp) (ho : HQ.Ordered) : B.toNat + 64 ≤ heapEnd :=
  le_trans h ho.2.1

variable {X : Ctx 64}

theorem wd_add {B : BitVec 64} {HQ : Ptrs} {d nm : Nat} (hd : d + nm ≤ 48) :
    HoareG σ X (IQ B HQ d nm) (.assign .local Aw.pN (.op .add [lv Aw.pN, lv wN])) (WP (IP B HQ (d + nm))) := by
  refine hoareG_assign fun s _ ⟨hW, P, n, hL, h1, h2, h3⟩ v hv _ => ⟨fun _ => ⟨hW, ?_⟩, fun r' h => by cases h⟩
  have he : heapEnd < 2 ^ 63 := by decide
  have ht := wd_top hW.2.1 hW.2.2
  rw [ev_add2 (Trie.lv_ev hL (x := Aw.pN) (v := Wv P) (by simp)) (Trie.lv_ev hL (x := wN) (v := Wv (BitVec.ofNat 64 n)) (by simp))] at hv
  cases hv
  have e : (P + BitVec.ofNat 64 n).toNat = P.toNat + n := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := n) (by omega)]
    exact Nat.mod_eq_of_lt (by omega)
  have hb : Trie.LV [(Aw.bufN, Wv B)] s.locals := Trie.lv_mono hL fun p hp => by
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
    exact Or.inr (Or.inl hp)
  refine ⟨P + BitVec.ofNat 64 n, Trie.lv_mono (Trie.lv_new hb (by apply ivFresh_of; simp only [List.map_cons, List.map_nil]; decide) _) fun p hp => ?_, by omega, by omega⟩
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
  rcases hp with rfl | rfl
  · exact Or.inr rfl
  · exact Or.inl rfl

/-- A writer call `w = f(p, ...)`: the locals and the heap pointer after it. -/
theorem wd_after {B P : BitVec 64} {HQ : Ptrs} {s st : State σ} {v : ValueHOL 64}
    (hW : WIn B HQ s) (hL : Trie.LV [(Aw.bufN, Wv B), (Aw.pN, Wv P)] s.locals) (hg : st.globals = s.globals) :
    WIn B HQ (setKvarHOLFinite .local wN v { st with locals := s.locals }) ∧
      Trie.LV [(wN, v), (Aw.bufN, Wv B), (Aw.pN, Wv P)] (setKvarHOLFinite .local wN v { st with locals := s.locals }).locals :=
  ⟨⟨(AllocImpl.ptrsOf_congr hg).trans hW.1, hW.2⟩,
    Trie.lv_new (s := { st with locals := s.locals }) hL (by apply ivFresh_of; simp only [List.map_cons, List.map_nil]; decide) v⟩

theorem wd_word (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {B : BitVec 64} {HQ : Ptrs} {d : Nat} (hd : d ≤ 48)
    {e : ExpHOL 64} (he : ∀ (s : State σ) (v : ValueHOL 64), ev s e = some v → ∃ W : BitVec 64, v = Wv W) :
    HoareG σ X (IP B HQ d) (Aw.callW (nm "rlp_encode_word") [lv Aw.pN, e]) (WP (IQ B HQ d 9)) := by
  refine hoareG_callA (footRet_rlp_encode_word hC hA) ?_ ?_
  · rintro s _ ⟨hW, P, hL, h1, h2⟩ vs hvs callee v st hR _ _
    obtain ⟨v1, vs1, rfl, e1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, e2, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    rw [Trie.lv_ev hL (x := Aw.pN) (v := Wv P) (by simp)] at e1
    cases e1
    obtain ⟨W, rfl⟩ := he s _ e2
    have ht := wd_top hW.2.1 hW.2.2
    have hse : heapEnd + 64 ≤ scratchEnd := by decide
    obtain ⟨w1, w2⟩ := wordLen_le W.isLt
    obtain ⟨hg, -, hret⟩ := hR (by simp [Good]) ⟨P, rfl, fun W' hW' => by
      cases hW'
      omega⟩
    have hv := hret v rfl W rfl
    subst hv
    obtain ⟨a1, a2⟩ := wd_after (v := Wv (BitVec.ofNat 64 (wordLen W.toNat))) hW hL hg
    exact ⟨fun _ => ⟨a1, P, _, a2, h1, h2, w2⟩, fun r' h => by cases h⟩
  · intro s _ _ vs _ callee r st _ _ habn
    exact ⟨(fun h => by cases h), fun r' hr' => by cases hr'; exact habn⟩

theorem wd_bytes (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {B : BitVec 64} {HQ : Ptrs} {d : Nat} (hd : d ≤ 27)
    {e : ExpHOL 64} :
    HoareG σ X (IP B HQ d) (Aw.callW (nm "rlp_encode_bytes") [lv Aw.pN, e, cw 20]) (WP (IQ B HQ d 21)) := by
  refine hoareG_callA (footRet_rlp_encode_bytes hC hA) ?_ ?_
  · rintro s _ ⟨hW, P, hL, h1, h2⟩ vs hvs callee v st hR _ _
    obtain ⟨v1, vs1, rfl, e1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, e2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, e3, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    rw [Trie.lv_ev hL (x := Aw.pN) (v := Wv P) (by simp)] at e1
    cases e1
    rw [ev_cw] at e3
    cases e3
    have ht := wd_top hW.2.1 hW.2.2
    have hse : heapEnd + 64 ≤ scratchEnd := by decide
    have hn : (BitVec.ofNat 64 20).toNat = 20 := by decide
    have hh : hdrLen 20 = 1 := by decide
    obtain ⟨hg, -, hret⟩ := hR (by simp [Good]) ⟨P, _, rfl, rfl, by rw [hn, hh]; omega⟩
    obtain ⟨k, rfl, k1, k2, -⟩ := hret v rfl _ rfl
    rw [hn, hh] at k2
    obtain ⟨a1, a2⟩ := wd_after (v := Wv (BitVec.ofNat 64 k)) hW hL hg
    exact ⟨fun _ => ⟨a1, P, k, a2, h1, h2, by omega⟩, fun r' h => by cases h⟩
  · intro s _ _ vs _ callee r st _ _ habn
    exact ⟨(fun h => by cases h), fun r' hr' => by cases hr'; exact habn⟩

/-- `var total = rlp_finish_list(buf, p); return <buf, total>;` -/
theorem wd_fin (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : Aw.DomBelow X) {B : BitVec 64} {HQ : Ptrs} {hp0 : Nat}
    (h8 : B.toNat % 8 = 0) (h0 : hp0 ≤ B.toNat) :
    HoareG σ X (IP B HQ 48) (.decCall Aw.totN .one (nm "rlp_finish_list") [lv Aw.bufN, lv Aw.pN]
      (.return (.rstruct [lv Aw.bufN, lv Aw.totN]))) (WOut hp0) := by
  refine hoareG_decCall (Aw.footRet_finish_listA hC hA hT) ?_ ?_
  · rintro s _ ⟨hW, P, hL, h1, h2⟩ vs hvs callee v st hR _ hsh
    rw [evs_cons (Trie.lv_ev hL (x := Aw.bufN) (v := Wv B) (by simp))
      (evs_cons (Trie.lv_ev hL (x := Aw.pN) (v := Wv P) (by simp)) evs_nil)] at hvs
    cases hvs
    have ht := wd_top hW.2.1 hW.2.2
    have he : heapEnd < 2 ^ 60 := by decide
    obtain ⟨hg, -, hret⟩ := hR (by simp [Good]) ⟨B, rfl, by omega⟩
    obtain ⟨-, k, rfl, k1, k2, k3⟩ := hret v rfl B rfl
    have hk := k3 P rfl
    have e9 : (B + BitVec.ofNat 64 9).toNat = B.toNat + 9 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 9) (by omega)]
      exact Nat.mod_eq_of_lt (by omega)
    have eP : (P - (B + BitVec.ofNat 64 9)).toNat = P.toNat - (B.toNat + 9) := by
      rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, e9]; exact h1), e9]
    obtain ⟨-, l2⟩ := hdrLen_le (P - (B + BitVec.ofNat 64 9)).isLt
    have hk57 : k ≤ 57 := by omega
    have htot : (BitVec.ofNat 64 k).toNat = k := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    refine hoareG_return fun t _ ht' v' hv' v'' hv2 => ?_
    subst ht'
    have hl2 : Trie.LV [(Aw.totN, Wv (BitVec.ofNat 64 k)), (Aw.bufN, Wv B), (Aw.pN, Wv P)]
        (setVarHOLFinite Aw.totN (Wv (BitVec.ofNat 64 k)) { st with locals := s.locals }).locals :=
      Trie.lv_new (s := { st with locals := s.locals }) hL (by apply ivFresh_of; simp only [List.map_cons, List.map_nil]; decide) _
    rw [ev_rstruct (evs_cons (Trie.lv_ev hl2 (x := Aw.bufN) (v := Wv B) (by simp))
      (evs_cons (Trie.lv_ev hl2 (x := Aw.totN) (v := Wv (BitVec.ofNat 64 k)) (by simp)) evs_nil))] at hv'
    cases hv'
    cases hv2
    exact ⟨HQ, B, BitVec.ofNat 64 k, (AllocImpl.ptrsOf_congr hg).trans hW.1, rfl, h8, h0, hW.2.1, by omega⟩
  · intro s _ _ vs _ callee r st _ _ habn v hv
    exact absurd hv (fun h => Node.abn_ne_ret habn v (Option.some.inj h))

theorem wout_locals {hp0 : Nat} {r : Option (PanSemResultExact 64)} {t : State σ} (Lc : LocalsH) (h : WOut hp0 r t) :
    WOut hp0 r { t with locals := Lc } := fun v hv => h v hv

theorem wp_seq {hp0 : Nat} {P I : State σ → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (WP I))
    (hk : HoareG σ X I k (WOut hp0)) : HoareG σ X P (.seq c k) (WOut hp0) :=
  hoareG_seq hc (fun r t _ hr _ h => wp_out hr h) (hoareG_pre hk fun _ _ h => h.1 rfl)

/-- `var w = rlp_encode_word(p, e); k`. -/
theorem wd_decWord (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {B : BitVec 64} {HQ : Ptrs} {hp0 : Nat} {e : ExpHOL 64}
    (he : ∀ (s : State σ) (v : ValueHOL 64), ev s e = some v → ∃ W : BitVec 64, v = Wv W) {k : ProgHOL 64}
    (hk : HoareG σ X (IQ B HQ 0 9) k (WOut hp0)) :
    HoareG σ X (IP B HQ 0) (.decCall wN .one (nm "rlp_encode_word") [lv Aw.pN, e] k) (WOut hp0) := by
  refine hoareG_decCall (footRet_rlp_encode_word hC hA) ?_ ?_
  · rintro s _ ⟨hW, P, hL, h1, h2⟩ vs hvs callee v st hR _ _
    obtain ⟨v1, vs1, rfl, e1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, e2, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    rw [Trie.lv_ev hL (x := Aw.pN) (v := Wv P) (by simp)] at e1
    cases e1
    obtain ⟨W, rfl⟩ := he s _ e2
    have ht := wd_top hW.2.1 hW.2.2
    have hse : heapEnd + 64 ≤ scratchEnd := by decide
    obtain ⟨w1, w2⟩ := wordLen_le W.isLt
    obtain ⟨hg, -, hret⟩ := hR (by simp [Good]) ⟨P, rfl, fun W' hW' => by
      cases hW'
      omega⟩
    have hv := hret v rfl W rfl
    subst hv
    obtain ⟨a1, a2⟩ := wd_after (v := Wv (BitVec.ofNat 64 (wordLen W.toNat))) hW hL hg
    refine hoareG_conseq hk (fun t _ ht' => ?_) (fun r t _ _ h => wout_locals _ h)
    subst ht'
    exact ⟨a1, P, _, a2, h1, h2, w2⟩
  · intro s _ _ vs _ callee r st _ _ habn v hv
    exact absurd hv (fun h => Node.abn_ne_ret habn v (Option.some.inj h))

theorem ldLe64_word {pre : List (ExpHOL 64)} (s : State σ) (v : ValueHOL 64) (h : ev s (Aw.ldLe64 pre) = some v) :
    ∃ W : BitVec 64, v = Wv W :=
  ev_op_word h

/-- **`encode_withdrawal_rlp`'s result lies in its block.** -/
theorem funSpec_wdFresh : HypWdFresh σ := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hA := hF.hal
  have hT := Aw.domBelow_guestCtx
  intro vs body callee rs hl s hs hloc r hr v hv p p' hp hord hp'
  subst hv
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one Aw.code_encode_withdrawal_rlp hl
  have H : HoareG σ guestCtx (fun t => t = s) (Aw.ewBody (Aw.ldLe64 [lv Aw.wdN]) (Aw.ldLe64 [lv Aw.wdN, cw 8])
      (.op .add [lv Aw.wdN, cw 16]) (Aw.ldLe64 [lv Aw.wdN, cw 36])) (WOut p.hp) := by
    unfold Aw.ewBody
    refine hoareG_decCall (Trie.funSpec_allocRel hX) ?_ ?_
    · rintro s0 _ rfl vs0 hvs callee0 v0 st ⟨hR1, hR2⟩ _ hsh
      rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
      cases hvs
      obtain ⟨-, hgl, q, hq, hordq, hmo, hret⟩ := hR1 (by simp [Good]) _ p rfl hp hord
      obtain ⟨B, rfl, h8, hlive, -⟩ := hret _ rfl
      have hB := hR2 (by simp [Good]) _ p rfl hp _ rfl
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hB
      have hZ : (BitVec.ofNat 64 64).toNat = 64 := by decide
      rw [hZ] at hlive
      obtain ⟨l1, l2⟩ := hlive
      have hpe : p.hp < 2 ^ 64 := by
        have := hord.2.1
        have he : heapEnd < 2 ^ 63 := by decide
        omega
      have hBn : B.toNat = p.hp := by rw [hB, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hpe]
      have he : heapEnd < 2 ^ 60 := by decide
      have hqe := hordq.2.1
      refine hoareG_dec fun s1 _ ht1 v1 hv1 _ => ?_
      subst ht1
      have hlb : Trie.LV [(Aw.bufN, Wv B)] (setVarHOLFinite Aw.bufN (Wv B) { st with locals := s0.locals }).locals :=
        Trie.lv_cons (fun _ h => by cases h) (by simp [setVarHOLFinite, FUPDATE])
      rw [ev_add2 (Trie.lv_ev hlb (x := Aw.bufN) (v := Wv B) (by simp)) (ev_cw _ 9)] at hv1
      cases hv1
      have e9 : (B + BitVec.ofNat 64 9).toNat = B.toNat + 9 := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 9) (by omega)]
        exact Nat.mod_eq_of_lt (by omega)
      refine hoareG_conseq (P := IP B q 0) (Q := WOut p.hp) ?_ (fun t _ ht' => ?_)
        (fun r t _ _ h => wout_locals _ (wout_locals _ h))
      · refine wd_decWord hX hA (ldLe64_word (pre := [lv Aw.wdN])) ?_
        refine wp_seq (wd_add (d := 0) (nm := 9) (by norm_num)) ?_
        unfold Aw.ewMid
        refine wp_seq (wd_word hX hA (d := 0 + 9) (by norm_num) (ldLe64_word (pre := [lv Aw.wdN, cw 8]))) ?_
        refine wp_seq (wd_add (d := 0 + 9) (nm := 9) (by norm_num)) ?_
        refine wp_seq (wd_bytes hX hA (d := 0 + 9 + 9) (by norm_num)) ?_
        refine wp_seq (wd_add (d := 0 + 9 + 9) (nm := 21) (by norm_num)) ?_
        unfold Aw.ewTail
        refine wp_seq (wd_word hX hA (d := 0 + 9 + 9 + 21) (by norm_num) (ldLe64_word (pre := [lv Aw.wdN, cw 36]))) ?_
        refine wp_seq (wd_add (d := 0 + 9 + 9 + 21) (nm := 9) (by norm_num)) ?_
        exact wd_fin hX hA hT h8 (by omega)
      · subst ht'
        refine ⟨⟨(AllocImpl.ptrsOf_congr rfl).trans hq, l2, hordq⟩, B + BitVec.ofNat 64 9,
          Trie.lv_mono (Trie.lv_new hlb (by apply ivFresh_of; simp only [List.map_cons, List.map_nil]; decide) _) fun x hx => ?_,
          by omega, by omega⟩
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hx ⊢
        rcases hx with rfl | rfl
        · exact Or.inr rfl
        · exact Or.inl rfl
    · intro s0 _ _ vs0 _ callee0 r0 st _ _ habn v0 hv0
      exact absurd hv0 (fun h => Node.abn_ne_ret habn v0 (Option.some.inj h))
  have H1 := H s hs rfl (by rw [hr]; simp [Good])
  rw [hr] at H1
  obtain ⟨q', B, T, hq, rfl, a, b, c, d⟩ := H1 _ rfl
  rw [hp'] at hq
  cases hq
  exact ⟨B, T, rfl, a, b, c, d⟩

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.funSpec_wdFresh
