import InitECandidate.Solver.MemSafe.Rec.TxRecEntry
import InitECandidate.Solver.MemSafe.MptH.ListCompact

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the first block (type dispatch, `rlp_decode_fully`, `t`, `nfields`)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)
open InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem txr_range_cmp (lo hi : Nat) (hlo : lo < 2 ^ 64) (hhi : hi < 2 ^ 64) (B0 : BitVec 64) :
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower B0 (BitVec.ofNat 64 lo) =
      decide (lo ≤ B0.toNat)) ∧
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower (BitVec.ofNat 64 hi) B0 =
      decide (B0.toNat ≤ hi)) := by
  have e1 : lo % 18446744073709551616 = lo := Nat.mod_eq_of_lt hlo
  have e2 : hi % 18446744073709551616 = hi := Nat.mod_eq_of_lt hhi
  constructor
  · simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def, BitVec.toNat_ofNat, e1]
    by_cases h : lo ≤ B0.toNat
    · have : ¬ B0.toNat < lo := by omega
      simp [h, this]
    · have : B0.toNat < lo := by omega
      simp [h, this]
  · simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def, BitVec.toNat_ofNat, e2]
    by_cases h : B0.toNat ≤ hi
    · have : ¬ hi < B0.toNat := by omega
      simp [h, this]
    · have : hi < B0.toNat := by omega
      simp [h, this]

theorem txr_ev_range {s : State σ} {B0 : BitVec 64} (lo hi : Nat) (hlo : lo < 2 ^ 64) (hhi : hi < 2 ^ 64)
    (hb : s.locals.lookup (nm "b0") = some (Wd B0)) :
    ev s (.op .and [.cmp .notEqual (cw 0) (.cmp .notLower (lv (nm "b0")) (cw lo)),
      .cmp .notEqual (cw 0) (.cmp .notLower (cw hi) (lv (nm "b0")))]) =
    some (.val (.word (if lo ≤ B0.toNat ∧ B0.toNat ≤ hi then 1 else 0))) := by
  obtain ⟨c1, c2⟩ := txr_range_cmp lo hi hlo hhi B0
  have e1 := ev_cmp (o := .notLower) (ev_lw hb) (ev_cw s lo)
  have e2 := ev_cmp (o := .notLower) (ev_cw s hi) (ev_lw hb)
  rw [c1] at e1
  rw [c2] at e2
  have f1 := ev_cmp (o := .notEqual) (ev_cw s 0) e1
  have f2 := ev_cmp (o := .notEqual) (ev_cw s 0) e2
  rw [ev_and2 f1 f2]
  by_cases h1 : lo ≤ B0.toNat <;> by_cases h2 : B0.toNat ≤ hi <;>
    simp [h1, h2, Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

theorem hoareG_raiseDI {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {e : ExpHOL 64} :
    HoareG σ X (DI a Ar n L E) (.raise x e) (DQ a Ar n L' E') := by
  refine hoareG_raise fun s hs hD v hv => ⟨fun h => by simp at h, fun r' hr' => ?_⟩
  simp only [Option.some.injEq] at hr'
  subst hr'
  refine ⟨Or.inl ⟨x, v, rfl⟩, fun _ => ?_⟩
  exact hha_congr (s := s) hH rfl rfl rfl rfl (hha_of_di hD)


def txrRest (Ar P N B0 : BitVec 64) (m : LocalsH) : Prop :=
  LV [(nm "tx", Wd Ar), (nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)] m

def txrTopF (a : Act σ) (P N : BitVec 64) (m : LocalsH) : Prop :=
  ∃ x1 b c x4 : BitVec 64, m.lookup (nm "top") = some (.rStruct [Wd x1, Wd b, Wd c, Wd x4]) ∧
    heapBase ≤ b.toNat ∧ b.toNat + c.toNat ≤ a.p0.hp ∧ P.toNat ≤ b.toNat ∧
    b.toNat + c.toNat ≤ P.toNat + N.toNat

def txrRn (a : Act σ) (Ar P N B0 : BitVec 64) (tt k : Nat) (m : LocalsH) : Prop :=
  m.lookup (nm "nfields") = some (Wd (BitVec.ofNat 64 k)) ∧
  m.lookup (nm "t") = some (Wd (BitVec.ofNat 64 tt)) ∧ txrRest Ar P N B0 m ∧ txrTopF a P N m

theorem rn_setnf {a : Act σ} {Ar P N B0 : BitVec 64} {tt k : Nat} {s : State σ} (n : Nat)
    (h : txrRn a Ar P N B0 tt k s.locals) :
    txrRn a Ar P N B0 tt n (setVarHOLFinite (nm "nfields") (Wd (BitVec.ofNat 64 n)) s).locals := by
  obtain ⟨-, ht, hr, x1, b, c, x4, htop, h1, h2⟩ := h
  refine ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact ht,
    lv_set hr (by txrne) _, x1, b, c, x4, by rw [lk_set_ne _ _ (by decide)]; exact htop, h1, h2⟩

theorem rn_sett {a : Act σ} {Ar P N B0 : BitVec 64} {tt tt' k : Nat} {s : State σ}
    (h : txrRn a Ar P N B0 tt k s.locals) :
    txrRn a Ar P N B0 tt' k (setVarHOLFinite (nm "t") (Wd (BitVec.ofNat 64 tt')) s).locals := by
  obtain ⟨hn, -, hr, x1, b, c, x4, htop, h1, h2⟩ := h
  refine ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn, lk_set_self _ _ _,
    lv_set hr (by txrne) _, x1, b, c, x4, by rw [lk_set_ne _ _ (by decide)]; exact htop, h1, h2⟩

theorem txr_rdf {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar : BitVec 64}
    {args : List (ExpHOL 64)} (hlen : args.length = 2) {Pv Lv : BitVec 64}
    (hbd : heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ a.p0.hp)
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hC : CallKeep a Ar E)
    (hshape : ∀ m, L m → ∃ x1 x2 x3 x4 : BitVec 64, m.lookup (nm "top") = some (wv [x1, x2, x3, x4]))
    (hargs : ∀ s : State σ, L s.locals → evs s args = some [Wd Pv, Wd Lv])
    (hL' : ∀ (s : State σ) (x1 b c x4 : BitVec 64), L s.locals → heapBase ≤ b.toNat →
      b.toNat + c.toNat ≤ a.p0.hp → Pv.toNat ≤ b.toNat → b.toNat + c.toNat ≤ Pv.toNat + Lv.toNat →
      L' (setVarHOLFinite (nm "top") (.rStruct [Wd x1, Wd b, Wd c, Wd x4]) s).locals) :
    HoareG σ X (DI a Ar 400 L E)
      (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully") args) (DQ a Ar 400 L' E) := by
  have hps : ∀ pt ∈ rlsSig.params, pt = .any := by simp [rlsSig]
  have h4 := ha.hord0.2.1
  refine hoareG_callALH ha hcs.rdf (freshFoot_rlp_decode_fully' hcs.hC) hps (by simp [rlsSig, hlen])
    (by simp [rlsSig]) (by simp [rlsSig]) ?_ ?_
  · intro s st vs callee v Γ q hL0 hvs hh hLc hval
    obtain ⟨x1, x2, x3, x4, hsh⟩ := hshape _ hL0
    obtain ⟨y1, y2, y3, y4, rfl⟩ := valid_v4 hsh hval
    rw [hargs s hL0] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
    obtain ⟨p', hp', hord', hmo, -, P', L', hvs', hRi⟩ := hLc _ rfl q hpe (heap_ord hh) trivial
    simp only [List.cons.injEq, Wd, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
    obtain ⟨rfl, rfl⟩ := hvs'
    obtain ⟨hc, hb⟩ := hRi y1 y2 y3 y4 rfl
    unfold heapEnd at h4
    obtain ⟨hb1, hb2⟩ := hb (by omega)
    exact hL' s y1 y2 y3 y4 hL0 (by omega) (by omega) hb1 hb2
  · intro s st vs callee v Γ Γ' q q' hs hL0 hvs hLc he hh hB hn hEs co hval
    exact hC hAr rlsSig vs Γ Γ' q q' s st s.globals st.globals co
      (fun x hx => argCells_any hps hx) hB hEs


theorem txr_eqT : ∀ tt : Nat, tt ≤ 4 → ∀ i : Nat, i ≤ 4 →
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .equal (BitVec.ofNat 64 tt) (BitVec.ofNat 64 i) =
      decide (tt = i) := by decide

theorem txr_nfstep {a : Act σ} (ha : ActOK a X) {Ar P N B0 : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (tt k i n : Nat) (htt : tt ≤ 4) (hi : i ≤ 4) :
    HoareG σ X (DI a Ar 400 (txrRn a Ar P N B0 tt k) E)
      (.ite (.cmp .equal txrT (cw i)) (.assign .local (nm "nfields") (cw n)) .skip)
      (DQ a Ar 400 (txrRn a Ar P N B0 tt (if tt = i then n else k)) E) := by
  by_cases h : tt = i
  · refine hoareG_iteT (w0 := 1) (by decide) (fun s hs hD => ?_) ?_
    · unfold txrT
      rw [ev_cmp (ev_lw hD.1.2.1) (ev_cw _ i), txr_eqT tt htt i hi]
      simp [h]
    · refine hoareG_assignDI ha.hH ?_
      intro s hs hL v hv
      rw [ev_cw] at hv
      cases hv
      rw [if_pos h]
      exact rn_setnf (a := a) n hL
  · refine hoareG_iteF (fun s hs hD => ?_) ?_
    · unfold txrT
      rw [ev_cmp (ev_lw hD.1.2.1) (ev_cw _ i), txr_eqT tt htt i hi]
      simp [h]
    · refine hoareG_skip fun s hs hD => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
      exact di_mono (fun m hm => by simpa [h] using hm) (fun _ _ _ _ x => x) hD


def txrPost (a : Act σ) (Ar P N : BitVec 64) (m : LocalsH) : Prop :=
  ∃ (tt : Nat) (Pt Nt : BitVec 64), txrL1 Ar tt Pt Nt m ∧ tt ≤ 4 ∧ heapBase ≤ Pt.toNat ∧
    Pt.toNat + Nt.toNat ≤ a.p0.hp ∧ P.toNat ≤ Pt.toNat ∧ Pt.toNat + Nt.toNat ≤ P.toNat + N.toNat

theorem rn_post {a : Act σ} {Ar P N B0 : BitVec 64} {tt : Nat} {m : LocalsH} (htt : tt ≤ 4)
    (h : txrRn a Ar P N B0 tt (txrNfOf tt) m) : txrPost a Ar P N m := by
  obtain ⟨hn, ht, hr, x1, b, c, x4, htop, h1, h2⟩ := h
  refine ⟨tt, b, c, ⟨?_, x1, x4, htop⟩, htt, h1, h2⟩
  intro q hq
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl
  · exact hr (nm "tx", Wd Ar) (by simp)
  · exact ht
  · exact hn

theorem txr_lp_rdf {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar P N B0 : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {args : List (ExpHOL 64)} (hlen : args.length = 2)
    {Pv Lv : BitVec 64} (hbd : heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ a.p0.hp)
    (hPv : P.toNat ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ P.toNat + N.toNat)
    (hargs : ∀ s : State σ, txrLp Ar P N B0 s.locals → evs s args = some [Wd Pv, Wd Lv]) :
    HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar))
      (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully") args)
      (DQ a Ar 400 (txrRn a Ar P N B0 0 9) (EZ Ar)) := by
  refine txr_rdf ha hcs hlen hbd hAr (ez_call hcs.hCb) ?_ hargs ?_
  · intro m hm
    exact ⟨_, _, _, _, hm (nm "top", wv [BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
      BitVec.ofNat 64 0]) (by simp)⟩
  · intro s x1 b c x4 hL h1 h2 hb1 hb2
    refine ⟨by rw [lk_set_ne _ _ (by decide)]; exact hL (nm "nfields", Wd (BitVec.ofNat 64 9)) (by simp),
      by rw [lk_set_ne _ _ (by decide)]; exact hL (nm "t", Wd (BitVec.ofNat 64 0)) (by simp), ?_,
      x1, b, c, x4, lk_set_self _ _ _, h1, h2, by omega, by omega⟩
    intro q hq
    simp only [txrRest, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · rw [lk_set_ne _ _ (by decide : nm "top" ≠ nm "tx")]; exact hL (nm "tx", Wd Ar) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "top" ≠ nm "b0")]; exact hL (nm "b0", Wd B0) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "top" ≠ nm "p")]; exact hL (nm "p", Wd P) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "top" ≠ nm "len")]; exact hL (nm "len", Wd N) (by simp)

theorem txr_else {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar P N B0 : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp) :
    HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar))
      (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notLower (lv (nm "b0")) (cw 192)),
          .cmp .notEqual (cw 0) (.cmp .notLower (cw 254) (lv (nm "b0")))])
        (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully")
          [lv (nm "p"), lv (nm "len")])
        (txrErr 2))
      (DQ a Ar 400 (txrRn a Ar P N B0 0 9) (EZ Ar)) := by
  by_cases h : 192 ≤ B0.toNat ∧ B0.toNat ≤ 254
  · refine hoareG_iteT (w0 := 1) (by decide) (fun s hs hD => ?_) ?_
    · rw [txr_ev_range 192 254 (by norm_num) (by norm_num) (hD.1 (nm "b0", Wd B0) (by simp)), if_pos h]
    · refine txr_lp_rdf ha hcs hAr rfl hPN ⟨le_rfl, le_rfl⟩ (fun s hL => ?_)
      rw [evs_cons (ev_lw (hL (nm "p", Wd P) (by simp))) (evs_cons (ev_lw (hL (nm "len", Wd N) (by simp))) evs_nil)]; rfl
  · refine hoareG_iteF (fun s hs hD => ?_) ?_
    · rw [txr_ev_range 192 254 (by norm_num) (by norm_num) (hD.1 (nm "b0", Wd B0) (by simp)), if_neg h]
    · exact hoareG_raiseDI ha.hH


theorem txr_nfval : ∀ tt : Nat, 1 ≤ tt → tt ≤ 4 →
    (if tt = 4 then 13 else if tt = 3 then 14 else if tt = 2 then 12 else if tt = 1 then 11 else 9) =
      txrNfOf tt := by decide

theorem txr_then {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar P N B0 : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp) (hN0 : N.toNat ≠ 0)
    (hB : 1 ≤ B0.toNat ∧ B0.toNat ≤ 4) :
    HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar))
      (.seq (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully")
          [.op .add [lv (nm "p"), cw 1], .op .sub [lv (nm "len"), cw 1]])
        (.seq (.assign .local (nm "t") (lv (nm "b0")))
          (.seq (.ite (.cmp .equal txrT (cw 1)) (.assign .local (nm "nfields") (cw 11)) .skip)
            (.seq (.ite (.cmp .equal txrT (cw 2)) (.assign .local (nm "nfields") (cw 12)) .skip)
              (.seq (.ite (.cmp .equal txrT (cw 3)) (.assign .local (nm "nfields") (cw 14)) .skip)
                (.ite (.cmp .equal txrT (cw 4)) (.assign .local (nm "nfields") (cw 13)) .skip))))))
      (DQ a Ar 400 (txrRn a Ar P N B0 B0.toNat (txrNfOf B0.toNat)) (EZ Ar)) := by
  have hse := heapEnd_lt64
  have h4 := ha.hord0.2.1
  unfold heapEnd at h4 hse
  have hP1 : (P + BitVec.ofNat 64 1).toNat = P.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hN1 : (N - BitVec.ofNat 64 1).toNat = N.toNat - 1 := by
    rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
  refine hoareG_seqDQ (txr_lp_rdf ha hcs hAr (by rfl) (Pv := P + BitVec.ofNat 64 1)
    (Lv := N - BitVec.ofNat 64 1) ⟨by omega, by omega⟩ ⟨by omega, by omega⟩ (fun s hL => ?_)) ?_
  · rw [evs_cons (ev_add2 (ev_lw (hL (nm "p", Wd P) (by simp))) (ev_cw _ 1))
      (evs_cons (ev_sub2 (ev_lw (hL (nm "len", Wd N) (by simp))) (ev_cw _ 1)) evs_nil)]
    rfl
  refine hoareG_seqDQ (L := txrRn a Ar P N B0 B0.toNat 9) (E := EZ Ar) ?_ ?_
  · refine hoareG_assignDI ha.hH ?_
    intro s hs hL v hv
    rw [ev_lw (hL.2.2.1 (nm "b0", Wd B0) (by simp))] at hv
    cases hv
    have e : (ValueHOL.val (HolWordLab.word B0) : ValueHOL 64) = Wd (BitVec.ofNat 64 B0.toNat) := by
      simp [Wd, BitVec.ofNat_toNat]
    rw [e]
    exact rn_sett hL
  have htt := hB.2
  refine hoareG_seqDQ (txr_nfstep ha B0.toNat 9 1 11 htt (by norm_num))
    (hoareG_seqDQ (txr_nfstep ha B0.toNat _ 2 12 htt (by norm_num))
    (hoareG_seqDQ (txr_nfstep ha B0.toNat _ 3 14 htt (by norm_num)) ?_))
  refine hoareG_dqL (txr_nfstep ha B0.toNat _ 4 13 htt (by norm_num)) (fun m hm => ?_)
  rw [← txr_nfval B0.toNat hB.1 hB.2]
  exact hm

theorem txr_FB1 {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar P N B0 : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp) (hN0 : N.toNat ≠ 0) :
    HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar))
      (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notLower (lv (nm "b0")) (cw 1)),
          .cmp .notEqual (cw 0) (.cmp .notLower (cw 4) (lv (nm "b0")))])
        (.seq (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully")
          [.op .add [lv (nm "p"), cw 1], .op .sub [lv (nm "len"), cw 1]])
        (.seq (.assign .local (nm "t") (lv (nm "b0")))
          (.seq (.ite (.cmp .equal txrT (cw 1)) (.assign .local (nm "nfields") (cw 11)) .skip)
            (.seq (.ite (.cmp .equal txrT (cw 2)) (.assign .local (nm "nfields") (cw 12)) .skip)
              (.seq (.ite (.cmp .equal txrT (cw 3)) (.assign .local (nm "nfields") (cw 14)) .skip)
                (.ite (.cmp .equal txrT (cw 4)) (.assign .local (nm "nfields") (cw 13)) .skip))))))
        (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notLower (lv (nm "b0")) (cw 192)),
          .cmp .notEqual (cw 0) (.cmp .notLower (cw 254) (lv (nm "b0")))])
          (.call (some (some (.local, nm "top"), none)) (nm "rlp_decode_fully")
            [lv (nm "p"), lv (nm "len")])
          (txrErr 2)))
      (DQ a Ar 400 (txrPost a Ar P N) (EZ Ar)) := by
  by_cases hB : 1 ≤ B0.toNat ∧ B0.toNat ≤ 4
  · refine hoareG_iteT (w0 := 1) (by decide) (fun s hs hD => ?_) ?_
    · rw [txr_ev_range 1 4 (by norm_num) (by norm_num) (hD.1 (nm "b0", Wd B0) (by simp)), if_pos hB]
    · exact hoareG_dqL (txr_then ha hcs hAr hPN hN0 hB) (fun m hm => rn_post hB.2 hm)
  · refine hoareG_iteF (fun s hs hD => ?_) ?_
    · rw [txr_ev_range 1 4 (by norm_num) (by norm_num) (hD.1 (nm "b0", Wd B0) (by simp)), if_neg hB]
    · exact hoareG_dqL (txr_else ha hcs hAr hPN) (fun m hm => rn_post (tt := 0) (by norm_num) hm)

theorem txr_FB {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar P N B0 : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp)
    (hN0 : N.toNat ≠ 0) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx P N mem → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar)) txrFirst (NQM a Rv) := by
  unfold txrFirst
  refine hoareG_seqDIM (txr_FB1 ha hcs hAr hPN hN0) ?_
  refine txrExL (fun tt => txrExL (fun Pt => txrExL (fun Nt => ?_)))
  refine hoareG_exP (fun ⟨htt, hP1, hP2, hE1, hE2⟩ => ?_)
  refine hoareG_seqDIM (txr_stL2 ha (fun m hm => hm.1 (nm "tx", Wd Ar) (by simp)) hAr
    (ez_store (Ar := Ar)) 0 1 (by norm_num) (by norm_num) (by decide) ?_) ?_
  · intro s hs hL v hv
    unfold txrT at hv
    rw [ev_lw (hL.1 (nm "t", Wd (BitVec.ofNat 64 tt)) (by simp))] at hv
    cases hv; simp [flattenHOL]
  refine hoareG_seqDIM (hoareG_guardDI ha.hH) ?_
  exact txr_Lst ha hcs hgr hAr hAb tt htt ⟨hP1, hP2⟩
    (fun Γ' p' mem tx ho hK => hRv Γ' p' mem tx ho (txk_widen hE1 hE2 hK))

end InitECandidate.Solver.MemSafe.Rec
