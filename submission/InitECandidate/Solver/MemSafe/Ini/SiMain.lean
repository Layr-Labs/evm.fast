import InitECandidate.Solver.MemSafe.Ini.SiKn

/-!
# `state_init`: the body, from the entry invariant to `FinG`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

structure Cx (a : Act σ) (db : BitVec 64) : Prop where
  ha : ActOK a guestCtx
  hX : guestCtx.code.lookup = guestCode
  haC : a.C = Types.guestC
  hCb : a.Cb = Types.guestC
  haH : a.H = guestHooksR (σ := σ)
  hgr : a.sg.grows = true
  hcaps : a.caps = []
  hargs : ∀ x, ¬ ArgCells a.sg.params a.vs x
  hL0 : Layout Types.guestC a.p0 a.Γ0
  hND : Hooks.NdbR a.Γ0 a.s0.memory db
  gwn : nm "journal_n" ∈ a.sg.gw
  gwc : nm "journal_cap" ∈ a.sg.gw
  hsg : a.sg = siSigW

def kvf0 (db rt cd : BitVec 64) : List (MlS × BitVec 64 × FK) :=
  [(nm "nodedb", db, .scalar), (nm "state_root", rt, .scalar), (nm "codedb", cd, .scalar)]

def K1 (kn : Know) : Prop := kn.B = none ∧ kn.S = none ∧ kn.J = none ∧ kn.W ≠ none

def Kw (db cd : BitVec 64) (m : Nat) (kn : Know) : Prop :=
  K1 kn ∧ (0 < m → kn.wv 0 = some db) ∧ (2 < m → kn.wv 2 = some cd) ∧ ∀ k, k < m → kn.wv k ≠ none

theorem kw_step (db cd : BitVec 64) (m : Nat) (x : BitVec 64) (kn : Know) (h : Kw db cd m kn)
    (hx0 : m = 0 → x = db) (hx2 : m = 2 → x = cd) :
    Kw db cd (m + 1) { kn with wv := Function.update kn.wv m (some x) } := by
  obtain ⟨h1, h0, h2, h3⟩ := h
  refine ⟨h1, fun _ => ?_, fun _ => ?_, fun k hk => ?_⟩
  · by_cases e : m = 0
    · subst e; simp [hx0 rfl]
    · simp [Function.update_of_ne (Ne.symm e)]; exact h0 (by omega)
  · by_cases e : m = 2
    · subst e; simp [hx2 rfl]
    · have : (2:Nat) ≠ m := Ne.symm e
      simp [Function.update_of_ne this]; exact h2 (by omega)
  · by_cases e : k = m
    · subst e; simp
    · simp [Function.update_of_ne e]; exact h3 k (by omega)

theorem dj_setW {kn : Know} {W : BitVec 64} (hD : Dj kn) (hB : kn.B = none) (hS : kn.S = none) (hJ : kn.J = none) :
    Dj { kn with W := some W } := by
  obtain ⟨a, b, c, d, e, f⟩ := hD
  refine ⟨?_, ?_, ?_, d, e, f⟩ <;> intro x y hx hy <;> simp_all

theorem dj_setB {kn : Know} {B : BitVec 64} (hD : Dj kn) (hS : kn.S = none) (hJ : kn.J = none)
    (hd : DjNew kn B 80) : Dj { kn with B := some B } := by
  obtain ⟨a, b, c, d, e, f⟩ := hD
  obtain ⟨h1, h2, h3, h4⟩ := hd
  refine ⟨?_, b, c, ?_, ?_, f⟩
  · intro x y hx hy
    simp only [Option.some.injEq] at hy
    subst hy
    exact h1 x hx
  · intro x y hx hy; simp_all
  · intro x y hx hy; simp_all

theorem dj_setS {kn : Know} {S : BitVec 64} (hD : Dj kn) (hJ : kn.J = none)
    (hd : DjNew kn S 64) : Dj { kn with S := some S } := by
  obtain ⟨a, b, c, d, e, f⟩ := hD
  obtain ⟨h1, h2, h3, h4⟩ := hd
  refine ⟨a, ?_, c, ?_, e, ?_⟩
  · intro x y hx hy
    simp only [Option.some.injEq] at hy
    subst hy
    exact h1 x hx
  · intro x y hx hy
    simp only [Option.some.injEq] at hy
    subst hy
    exact h2 x hx
  · intro x y hx hy; simp_all

theorem dj_setJ {kn : Know} {J : BitVec 64} (hD : Dj kn) (hd : DjNew kn J 16777216) :
    Dj { kn with J := some J } := by
  obtain ⟨a, b, c, d, e, f⟩ := hD
  obtain ⟨h1, h2, h3, h4⟩ := hd
  refine ⟨a, b, ?_, d, ?_, ?_⟩
  all_goals intro x y hx hy; simp only [Option.some.injEq] at hy; subst hy
  · exact h1 x hx
  · exact h2 x hx
  · exact h3 x hx

theorem know_eta (kn : Know) {S Jb : BitVec 64} (hS : kn.S = some S) (hJ : kn.J = some Jb) :
    { kn with S := some S, J := some Jb } = kn := by
  cases kn; simp at hS hJ; subst hS hJ; rfl

/-- `journal_cap = 524288`. -/
theorem assignCap_K {a : Act σ} {db : BitVec 64} (c : Cx a db) {kvf : List (MlS × BitVec 64 × FK)} {K : Know → Prop}
    {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (JK a kvf K) (.assign .global (nm "journal_cap") (cw 524288))
      (NQr (fun t => JK a kvf K t ∧
        t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288)))) F) := by
  intro s hs ⟨kn, hS, hD, hK⟩ hg
  have := step_assign_glob (σ := σ) (a := a) c.haC c.haH (g := nm "journal_cap") (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (k := .scalar) (by decide) (v := BitVec.ofNat 64 524288)
    (fun _ => trivial) (Or.inl c.gwc) (kn := kn) (kvf := kvf) (P := fun t => SI a kn kvf t) (fun t h => h)
    (e := cw 524288) (fun t _ => ev_cw t _) (P' := fun t' =>
      t'.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))))
    (fun t h => HtabEntries.setG_self) (F := F) s hs hS hg
  exact ⟨fun hr => ⟨⟨kn, (this.1 hr).1, hD, hK⟩, (this.1 hr).2⟩, this.2⟩

def KT0 (db cd : BitVec 64) (kn : Know) : Prop := KnFull kn db cd ∧ kn.S = none ∧ kn.J = none

/-- **The tail**: `sk_buf = alloc(64); journal_cap = ..; journal = alloc(..); journal_n = 0; ts = 0; return 0`. -/
theorem phaseT {a : Act σ} {db : BitVec 64} (c : Cx a db) {cd : BitVec 64} {kvf : List (MlS × BitVec 64 × FK)} :
    HoareG σ guestCtx (JK a kvf (KT0 db cd))
      (siChain (siStm.drop 19)) (NQr (fun _ => True) (FinG a db cd)) := by
  have hF := congrF_finG (a := a) c.ha.hH db cd
  have h19 : HoareG σ guestCtx (fun t => JK a kvf (KT0 db cd) t ∧ True)
      (.call (some (some (.global, nm "sk_buf"), none)) (nm "alloc") [cw 64])
      (NQr (fun t => JK a kvf (fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none) t ∧
        ∀ q0 ∈ ([] : List (MlS × ValueHOL 64)), t.globals.lookup q0.1 = some q0.2) (FinG a db cd)) := by
    refine alloc_K c.ha c.hX c.haC c.hCb c.haH c.hgr (g := nm "sk_buf") (by simp [hid]) (n := 64)
      (by decide) (by decide) (by decide) (Kp := KT0 db cd) (Kq := fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none)
      (fun kn h => Or.inr (by decide)) (fun kn h => Or.inr (by decide)) (fun kn h => Or.inl h.2.1)
      (fun kn h => Or.inr (by decide)) (fun _ => True) (cw 64) (fun t _ => ev_cw t 64) [] (fun _ _ q h => by cases h)
      (fun q h => by cases h) (fun kn W => { kn with S := some W }) ?_ ?_ ?_
    · intro kn W Γ q t hK hSc hlk hbl hdis
      exact sic_setS hK.2.1 hSc hlk hbl
    · intro kn W hK
      exact ⟨hK.1, hK.2.2, by simp⟩
    · intro kn W hK hD hdj
      exact dj_setS hD hK.2.2 hdj
  have h20 := assignCap_K c (kvf := kvf) (K := fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none)
    (F := FinG a db cd)
  have h21 : HoareG σ guestCtx (fun t => JK a kvf (fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none) t ∧
        t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))))
      (.call (some (some (.global, nm "journal"), none)) (nm "alloc") [.panop .mul [gv (nm "journal_cap"), cw 32]])
      (NQr (fun t => JK a kvf (fun kn => KnFull kn db cd ∧ kn.J ≠ none ∧ kn.S ≠ none) t ∧
        ∀ q0 ∈ [((nm "journal_cap"), (ValueHOL.val (.word (BitVec.ofNat 64 524288))))],
          t.globals.lookup q0.1 = some q0.2) (FinG a db cd)) := by
    refine alloc_K c.ha c.hX c.haC c.hCb c.haH c.hgr (g := nm "journal") (by simp [hid]) (n := 16777216)
      (by decide) (by decide) (by decide) (Kp := fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none)
      (Kq := fun kn => KnFull kn db cd ∧ kn.J ≠ none ∧ kn.S ≠ none)
      (fun kn h => Or.inr (by decide)) (fun kn h => Or.inr (by decide)) (fun kn h => Or.inr (by decide))
      (fun kn h => Or.inl h.2.1)
      (fun t => t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288))))
      (.panop .mul [gv (nm "journal_cap"), cw 32]) ?_ [((nm "journal_cap"), (ValueHOL.val (.word (BitVec.ofNat 64 524288))))]
      ?_ ?_ (fun kn W => { kn with J := some W }) ?_ ?_ ?_
    · intro t ht
      have e1 : ev t (gv (nm "journal_cap")) = some (.val (.word (BitVec.ofNat 64 524288))) := ht
      rw [ev_mul2 e1 (ev_cw t 32)]
      have : BitVec.ofNat 64 524288 * BitVec.ofNat 64 32 = BitVec.ofNat 64 16777216 := by decide
      rw [this]
    · intro t ht q0 hq0
      simp only [List.mem_singleton] at hq0
      subst hq0; exact ht
    · intro q0 hq0
      simp only [List.mem_singleton] at hq0
      subst hq0
      exact ⟨by decide, by decide⟩
    · intro kn W Γ q t hK hSc hlk hbl hdis
      exact sic_setJ hK.2.1 hSc hlk hbl
    · intro kn W hK
      exact ⟨hK.1, by simp, hK.2.2⟩
    · intro kn W hK hD hdj
      exact dj_setJ hD hdj
  refine nqr_seq (J := fun t => JK a kvf (fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none) t) ?_ ?_
  · exact nqr_conseq (hoareG_pre h19 (fun t _ h => ⟨h, trivial⟩)) (fun t h => h.1)
  refine nqr_seq (J := fun t => JK a kvf (fun kn => KnFull kn db cd ∧ kn.J = none ∧ kn.S ≠ none) t ∧
        t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288)))) h20 ?_
  refine nqr_seq (J := fun t => JK a kvf (fun kn => KnFull kn db cd ∧ kn.J ≠ none ∧ kn.S ≠ none) t ∧
        t.globals.lookup (nm "journal_cap") = some (.val (.word (BitVec.ofNat 64 524288)))) ?_ ?_
  · exact nqr_conseq h21 (fun t h => ⟨h.1, h.2 _ (List.mem_singleton_self _)⟩)
  intro s hs ⟨⟨kn, hS, hD, hK, hJ, hS'⟩, hcap⟩ hg
  obtain ⟨J1, hJ1⟩ := Option.ne_none_iff_exists'.mp hJ
  obtain ⟨S1, hS1⟩ := Option.ne_none_iff_exists'.mp hS'
  have := tail_end (a := a) c.haC c.haH c.ha.hH (kn := kn) (kvf := kvf) (S := S1) (Jb := J1) (by rw [know_eta kn hS1 hJ1]; exact hD) hK c.gwn
    s hs ⟨by rw [know_eta kn hS1 hJ1]; exact hS, hcap⟩ hg
  exact this

theorem jk_mono {a : Act σ} {kvf : List (MlS × BitVec 64 × FK)} {K K' : Know → Prop}
    (h : ∀ kn, K kn → K' kn) {t : State σ} (hj : JK a kvf K t) : JK a kvf K' t := by
  obtain ⟨kn, hS, hD, hK⟩ := hj
  exact ⟨kn, hS, hD, h kn hK⟩

/-- After the `bs` allocation: `m` of its cells are written. -/
def KB (db cd : BitVec 64) (m : Nat) (kn : Know) : Prop :=
  kn.S = none ∧ kn.J = none ∧ kn.W ≠ none ∧ kn.B ≠ none ∧ kn.wv 0 = some db ∧ kn.wv 2 = some cd ∧
    (∀ k, k < 5 → kn.wv k ≠ none) ∧ ∀ k, k < m → kn.bv k ≠ none

theorem kb_step {db cd : BitVec 64} {m : Nat} {kn : Know} (x : BitVec 64) (h : KB db cd m kn) :
    KB db cd (m + 1) { kn with bv := Function.update kn.bv m (some x) } := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, h7, fun k hk => ?_⟩
  by_cases e : k = m
  · subst e; simp
  · simp [Function.update_of_ne e]; exact h8 k (by omega)

theorem kt0_of_kb {db cd : BitVec 64} {kn : Know} (h : KB db cd 10 kn) : KT0 db cd kn := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  refine ⟨⟨Option.ne_none_iff_exists'.mp h3 |>.imp fun _ h => h, Option.ne_none_iff_exists'.mp h4 |>.imp fun _ h => h,
    h5, h6, fun k hk => Option.ne_none_iff_exists'.mp (h7 k hk) |>.imp fun _ h => h,
    fun k hk => Option.ne_none_iff_exists'.mp (h8 k hk) |>.imp fun _ h => h⟩, h1, h2⟩

theorem lvf_t {a : Act σ} {kn : Know} {base : List (MlS × BitVec 64 × FK)} {T : BitVec 64} {k : FK}
    {Γ : Gam} {q : Ptrs} {s : State σ} (h : SIc a kn ((nm "t", T, k) :: base) Γ q s) :
    ev s (lv (nm "t")) = some (.val (.word T)) ∧ Fits Γ k T :=
  h.1 _ List.mem_cons_self

/-- `t = htab_new(KL, CP); store bs + 8k = t; rest`. -/
theorem tblStep {a : Act σ} {db : BitVec 64} (c : Cx a db) {cd : BitVec 64} {th KL CP : Nat}
    (hq : (KL, CP) ∈ Shards.newInst) (hth : th ∈ Types.hdrTys) (hrh : (Types.guestC.ty th).region = .heap)
    (hthk : Types.htKL th = KL) {k cc : Nat} (hcc : cc = 8 * k) (hk : k < 10) (hbs : bsK k = .ptr th)
    {T0 : BitVec 64} {k0 : FK} {base : List (MlS × BitVec 64 × FK)} (hbase : ∀ q ∈ base, q.1 ≠ nm "t")
    {REST : ProgHOL 64} {J : State σ → Prop} {F : State σ → ValueHOL 64 → Prop}
    (hrest : ∀ T' : BitVec 64, HoareG σ guestCtx (JK a ((nm "t", T', .ptr th) :: base) (KB db cd (k + 1))) REST
      (NQr J F)) :
    HoareG σ guestCtx (JK a ((nm "t", T0, k0) :: base) (KB db cd k))
      (.seq (.call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw KL, cw CP])
        (.seq (.store (.op .add [gv (nm "bs"), cw cc]) (lv (nm "t"))) REST)) (NQr J F) := by
  refine nqr_seq (newAssign_K c.ha c.hX c.haC c.hCb c.haH c.hgr hq hth hrh hthk hbase) ?_
  refine hoareG_ex' (fun T' => nqr_seq (J := JK a ((nm "t", T', .ptr th) :: base) (KB db cd (k + 1)))
    (storeBs_K c.ha hcc hk (Kp := KB db cd k) (Kq := KB db cd (k + 1)) (fun _ => T') (fun kn h => h.2.2.2.1)
      (fun kn h => kb_step _ h) (fun kn s Γ q _ hSc => (lvf_t hSc).1)
      (fun kn s Γ q _ hSc => by rw [hbs]; exact (lvf_t hSc).2)) (hrest T'))

theorem bsK_scalar (k : Nat) (h : k = 0 ∨ k = 7 ∨ k = 8) : bsK k = .scalar := by
  rcases h with rfl | rfl | rfl <;> decide

theorem storeBs_const {a : Act σ} (ha : ActOK a guestCtx) {db cd : BitVec 64} {kvf : List (MlS × BitVec 64 × FK)}
    {k cc : Nat} (hcc : cc = 8 * k) (hk : k < 10) (hs : k = 7 ∨ k = 8) {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (JK a kvf (KB db cd k)) (.store (.op .add [gv (nm "bs"), cw cc]) (cw 0))
      (NQr (JK a kvf (KB db cd (k + 1))) F) :=
  storeBs_K ha hcc hk (Kp := KB db cd k) (Kq := KB db cd (k + 1)) (fun _ => 0) (fun kn h => h.2.2.2.1)
    (fun kn h => kb_step _ h) (fun kn s Γ q _ _ => ev_cw s 0)
    (fun kn s Γ q _ _ => by rw [bsK_scalar k (by omega)]; trivial)

/-- **After the `ws` stores**: `bs = alloc(80)` .. the tail. -/
theorem phaseB {a : Act σ} {db : BitVec 64} (c : Cx a db) {cd : BitVec 64} {T : BitVec 64}
    {base : List (MlS × BitVec 64 × FK)} (hbase : ∀ q ∈ base, q.1 ≠ nm "t") :
    HoareG σ guestCtx (JK a ((nm "t", T, .ptr Types.tHTh32) :: base) (Kw db cd 5))
      (siChain (siStm.drop 1)) (NQr (fun _ => True) (FinG a db cd)) := by
  have hF := congrF_finG (a := a) c.ha.hH db cd
  have hphT : ∀ T9 : BitVec 64, HoareG σ guestCtx (JK a ((nm "t", T9, .ptr Types.tHTb20) :: base) (KB db cd 10))
      (siChain (siStm.drop 19)) (NQr (fun _ => True) (FinG a db cd)) := fun T9 =>
    hoareG_pre (phaseT c (cd := cd) (kvf := (nm "t", T9, .ptr Types.tHTb20) :: base))
      (fun t _ h => jk_mono (fun kn h => kt0_of_kb h) h)
  have hbs : HoareG σ guestCtx (fun t => JK a ((nm "t", T, .ptr Types.tHTh32) :: base) (Kw db cd 5) t ∧ True)
      (.call (some (some (.global, nm "bs"), none)) (nm "alloc") [cw 80])
      (NQr (fun t => JK a ((nm "t", T, .ptr Types.tHTh32) :: base) (KB db cd 0) t ∧
        ∀ q0 ∈ ([] : List (MlS × ValueHOL 64)), t.globals.lookup q0.1 = some q0.2) (FinG a db cd)) := by
    refine alloc_K c.ha c.hX c.haC c.hCb c.haH c.hgr (g := nm "bs") (by simp [hid]) (n := 80)
      (by decide) (by decide) (by decide) (Kp := Kw db cd 5) (Kq := KB db cd 0)
      (fun kn h => Or.inr (by decide)) (fun kn h => Or.inl h.1.1) (fun kn h => Or.inr (by decide))
      (fun kn h => Or.inr (by decide)) (fun _ => True) (cw 80) (fun t _ => ev_cw t 80) [] (fun _ _ q h => by cases h)
      (fun q h => by cases h) (fun kn W => { kn with B := some W }) ?_ ?_ ?_
    · intro kn W Γ q t hK hSc hlk hbl hdis
      exact sic_setB hK.1.1 hSc hlk hbl hdis.1 (Option.ne_none_iff_exists'.mp hK.1.2.2.2 |>.imp fun _ h => h)
    · intro kn W hK
      obtain ⟨⟨h1, h2, h3, h4⟩, h5, h6, h7⟩ := hK
      exact ⟨h2, h3, h4, by simp, h5 (by omega), h6 (by omega), h7, fun k hk => by omega⟩
    · intro kn W hK hD hdj
      exact dj_setB hD hK.1.2.1 hK.1.2.2.1 hdj
  refine nqr_seq (J := fun t => JK a ((nm "t", T, .ptr Types.tHTh32) :: base) (KB db cd 0) t) ?_ ?_
  · exact nqr_conseq (hoareG_pre hbs (fun t _ h => ⟨h, trivial⟩)) (fun t h => h.1)
  refine nqr_seq (J := JK a ((nm "t", T, .ptr Types.tHTh32) :: base) (KB db cd 1)) ?_ ?_
  · refine storeBs_K c.ha (k := 0) (c := 0) rfl (by decide) (Kp := KB db cd 0) (Kq := KB db cd 1)
      (fun kn => kn.W.getD 0) (fun kn h => h.2.2.2.1) (fun kn h => kb_step _ h) ?_ ?_
    · intro kn s Γ q hK hSc
      obtain ⟨W, hW⟩ := Option.ne_none_iff_exists'.mp hK.2.2.1
      have := (hSc.2.1 W hW).1
      simp only [hW, Option.getD_some]
      exact this
    · intro kn s Γ q _ _
      rw [bsK_scalar 0 (Or.inl rfl)]; trivial
  exact tblStep c (th := Types.tHTb20) (KL := 20) (CP := 256) (by decide) (by decide) (by decide) (by decide)
      (k := 1) (cc := 8) rfl (by decide) (by decide) hbase (fun T1 => tblStep c (th := Types.tHTb20) (KL := 20) (CP := 256) (by decide) (by decide) (by decide) (by decide)
      (k := 2) (cc := 16) rfl (by decide) (by decide) hbase (fun T2 => tblStep c (th := Types.tHTb52) (KL := 52) (CP := 256) (by decide) (by decide) (by decide) (by decide)
      (k := 3) (cc := 24) rfl (by decide) (by decide) hbase (fun T3 => tblStep c (th := Types.tHTbt20) (KL := 20) (CP := 64) (by decide) (by decide) (by decide) (by decide)
      (k := 4) (cc := 32) rfl (by decide) (by decide) hbase (fun T4 => tblStep c (th := Types.tHTb52) (KL := 52) (CP := 64) (by decide) (by decide) (by decide) (by decide)
      (k := 5) (cc := 40) rfl (by decide) (by decide) hbase (fun T5 => tblStep c (th := Types.tHTbc32) (KL := 32) (CP := 64) (by decide) (by decide) (by decide) (by decide)
      (k := 6) (cc := 48) rfl (by decide) (by decide) hbase (fun T6 => nqr_seq (storeBs_const c.ha (db := db) (cd := cd) (k := 7) (cc := 56) rfl (by decide) (Or.inl rfl)) (nqr_seq (storeBs_const c.ha (db := db) (cd := cd) (k := 8) (cc := 64) rfl (by decide) (Or.inr rfl)) (tblStep c (th := Types.tHTb20) (KL := 20) (CP := 256) (by decide) (by decide) (by decide) (by decide)
      (k := 9) (cc := 72) rfl (by decide) (by decide) hbase (fun T9 => hphT T9)))))))))

theorem wsK_eq : wsK 0 = .prot ∧ wsK 1 = .scalar ∧ wsK 2 = .prot ∧ wsK 3 = Types.nodeU ∧
    wsK 4 = .ptr Types.tHTh32 := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> decide

theorem lvf_mem {a : Act σ} {kn : Know} {kvf : List (MlS × BitVec 64 × FK)} {x : MlS} {v : BitVec 64} {k : FK}
    {Γ : Gam} {q : Ptrs} {s : State σ} (h : SIc a kn kvf Γ q s) (hm : (x, v, k) ∈ kvf) :
    ev s (lv x) = some (.val (.word v)) ∧ Fits Γ k v := h.1 _ hm

theorem kvf0_ne_root (db rt cd : BitVec 64) : ∀ q ∈ kvf0 db rt cd, q.1 ≠ nm "root" := by
  intro q hq
  simp only [kvf0, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl <;> (dsimp only; decide)

theorem kvf0_ne_t (db rt cd : BitVec 64) (R : BitVec 64) :
    ∀ q ∈ ((nm "root", R, Types.nodeU) :: kvf0 db rt cd), q.1 ≠ nm "t" := by
  intro q hq
  simp only [kvf0, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl | rfl <;> (dsimp only; decide)

/-- **`state_init`'s body**. -/
theorem body_si {a : Act σ} {db : BitVec 64} (c : Cx a db) (rt cd : BitVec 64) :
    HoareG σ guestCtx (JK a (kvf0 db rt cd) (fun kn => kn.W = none ∧ kn.B = none ∧ kn.S = none ∧ kn.J = none))
      siBody (NQr (fun _ => True) (FinG a db cd)) := by
  have hF := congrF_finG (a := a) c.ha.hH db cd
  unfold siBody
  have hws : HoareG σ guestCtx (fun t => JK a (kvf0 db rt cd) (fun kn => kn.W = none ∧ kn.B = none ∧ kn.S = none ∧ kn.J = none) t ∧ True)
      (.call (some (some (.global, nm "ws"), none)) (nm "alloc") [cw 40])
      (NQr (fun t => JK a (kvf0 db rt cd) (Kw db cd 0) t ∧
        ∀ q0 ∈ ([] : List (MlS × ValueHOL 64)), t.globals.lookup q0.1 = some q0.2) (FinG a db cd)) := by
    refine alloc_K c.ha c.hX c.haC c.hCb c.haH c.hgr (g := nm "ws") (by simp [hid]) (n := 40)
      (by decide) (by decide) (by decide) (Kp := fun kn => kn.W = none ∧ kn.B = none ∧ kn.S = none ∧ kn.J = none)
      (Kq := Kw db cd 0)
      (fun kn h => Or.inl h.1) (fun kn h => Or.inr (by decide)) (fun kn h => Or.inr (by decide))
      (fun kn h => Or.inr (by decide)) (fun _ => True) (cw 40) (fun t _ => ev_cw t 40) [] (fun _ _ q h => by cases h)
      (fun q h => by cases h) (fun kn W => { kn with W := some W }) ?_ ?_ ?_
    · intro kn W Γ q t hK hSc hlk hbl hdis
      exact sic_setW hK.1 hSc hlk hbl
    · intro kn W hK
      exact ⟨⟨hK.2.1, hK.2.2.1, hK.2.2.2, by simp⟩, fun h => by omega, fun h => by omega, fun k hk => by omega⟩
    · intro kn W hK hD hdj
      exact dj_setW hD hK.2.1 hK.2.2.1 hK.2.2.2
  have hs : ∀ (k cc : Nat) (hcc : cc = 8 * k) (hk : k < 5) (e : ExpHOL 64) (x : BitVec 64) (kvf : List (MlS × BitVec 64 × FK))
      (hev : ∀ kn s Γ q, SIc a kn kvf Γ q s → ev s e = some (.val (.word x)))
      (hfit : ∀ kn s Γ q, SIc a kn kvf Γ q s → Fits Γ (wsK k) x)
      (hx0 : k = 0 → x = db) (hx2 : k = 2 → x = cd),
      HoareG σ guestCtx (JK a kvf (Kw db cd k)) (.store (.op .add [gv (nm "ws"), cw cc]) e)
        (NQr (JK a kvf (Kw db cd (k + 1))) (FinG a db cd)) := by
    intro k cc hcc hk e x kvf hev hfit hx0 hx2
    exact storeWs_K c.ha hcc hk (Kp := Kw db cd k) (Kq := Kw db cd (k + 1)) (fun _ => x)
      (fun kn h => h.1.2.2.2) (fun kn h => kw_step db cd k x kn h hx0 hx2) (fun kn s Γ q _ h => hev kn s Γ q h)
      (fun kn s Γ q _ h => hfit kn s Γ q h)
  obtain ⟨w0, w1, w2, w3, w4⟩ := wsK_eq
  refine nqr_seq (J := JK a (kvf0 db rt cd) (Kw db cd 0)) ?_ ?_
  · exact nqr_conseq (hoareG_pre hws (fun t _ h => ⟨h, trivial⟩)) (fun t h => h.1)
  refine nqr_seq (J := JK a (kvf0 db rt cd) (Kw db cd 1)) ?_ ?_
  · exact hs 0 0 rfl (by decide) (lv (nm "nodedb")) db (kvf0 db rt cd) (fun kn s Γ q h => (lvf_mem (k := .scalar) h (by simp [kvf0])).1)
      (fun kn s Γ q h => by rw [w0]; trivial) (fun _ => rfl) (fun h => absurd h (by decide))
  refine nqr_seq (J := JK a (kvf0 db rt cd) (Kw db cd 2)) ?_ ?_
  · exact hs 1 8 rfl (by decide) (lv (nm "state_root")) rt (kvf0 db rt cd) (fun kn s Γ q h => (lvf_mem (k := .scalar) h (by simp [kvf0])).1)
      (fun kn s Γ q h => by rw [w1]; trivial) (fun h => absurd h (by decide)) (fun h => absurd h (by decide))
  refine nqr_seq (J := JK a (kvf0 db rt cd) (Kw db cd 3)) ?_ ?_
  · exact hs 2 16 rfl (by decide) (lv (nm "codedb")) cd (kvf0 db rt cd) (fun kn s Γ q h => (lvf_mem (k := .scalar) h (by simp [kvf0])).1)
      (fun kn s Γ q h => by rw [w2]; trivial) (fun h => absurd h (by decide)) (fun _ => rfl)
  refine dwtm_K c.ha c.hX c.haC c.hCb c.haH c.hgr c.hcaps c.hargs c.hL0 c.hND (rt := rt) (k1 := .scalar) (k2 := .scalar)
    (by simp [kvf0]) (by simp [kvf0]) (kvf0_ne_root db rt cd) hF (J2 := fun _ => True) (fun R => ?_)
  refine nqr_seq (J := JK a ((nm "root", R, Types.nodeU) :: kvf0 db rt cd) (Kw db cd 4)) ?_ ?_
  · exact hs 3 24 rfl (by decide) (lv (nm "root")) R ((nm "root", R, Types.nodeU) :: kvf0 db rt cd) (fun kn s Γ q h => (lvf_mem (x := nm "root") (k := Types.nodeU) h (by simp)).1)
      (fun kn s Γ q h => by rw [w3]; exact (lvf_mem (x := nm "root") (k := Types.nodeU) h (by simp)).2) (fun h => absurd h (by decide)) (fun h => absurd h (by decide))
  refine newDec_K c.ha c.hX c.haC c.hCb c.haH c.hgr (th := Types.tHTh32) (KL := 32) (CP := 64) (by decide) (by decide)
    (by decide) (by decide) (kvf0_ne_t db rt cd R) hF (J2 := fun _ => True) (fun T => ?_)
  refine nqr_seq (J := JK a ((nm "t", T, .ptr Types.tHTh32) :: (nm "root", R, Types.nodeU) :: kvf0 db rt cd) (Kw db cd 5)) ?_ ?_
  · exact hs 4 32 rfl (by decide) (lv (nm "t")) T ((nm "t", T, .ptr Types.tHTh32) :: (nm "root", R, Types.nodeU) :: kvf0 db rt cd) (fun kn s Γ q h => (lvf_mem (x := nm "t") (k := .ptr Types.tHTh32) h (by simp)).1)
      (fun kn s Γ q h => by rw [w4]; exact (lvf_mem (x := nm "t") (k := .ptr Types.tHTh32) h (by simp)).2) (fun h => absurd h (by decide)) (fun h => absurd h (by decide))
  exact phaseB c (kvf0_ne_t db rt cd R)

end InitECandidate.Solver.MemSafe.Ini
