import InitECandidate.Solver.MemSafe.Exb.CrhCode
import InitECandidate.Solver.MemSafe.Ra.Win
import InitECandidate.Solver.MemSafe.Trie.CsrAlloc
import InitECandidate.Solver.MemSafe.Aw.Loop

/-!
# `compute_requests_hash`: the summary

`sumSpecA_compute_requests_hash`: signature `[any, any, buf 32]` (no growth), `Pre`: `n < 2^20`, no extra writes (`PW = False`).
The temporaries (`cat`, `sha256`'s state) are fresh or scalar; `heap_release(mark)` returns the heap pointer to its entry value,
which is a window (`winOK_heap`) since no object was created.

Rule added: **`gp_allocE`** (`gp_allocQ` with the size from the locals). The rest is `Ra`'s kit: `gp_markH` (the mark is the
heap pointer, a `Win`), `gp_callFM` (`sha256` writing a sub-block of the fresh `cat` block, then `out`), `gp_relH`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.Ra

variable {σ : Type}

/-- `gp_allocQ` with the size given by an expression of the locals; `hQ` also sees that no object was added. -/
theorem gp_allocE {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) {n : Nat}
    (hn64 : n < 2 ^ 64) (hn8 : n % 8 = 0) {x : MlS} {kv : List (MlS × ValueHOL 64)}
    (hx : ∀ p ∈ kv, p.1 ≠ x) {e : ExpHOL 64}
    (hev : ∀ s : State σ, Trie.LV kv s.locals → evs s [e] = some [.val (.word (BitVec.ofNat 64 n))])
    {E : Gam → Ptrs → Mem → Prop} (Q : BitVec 64 → Gam → Ptrs → Mem → Prop)
    (hQ : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs) (H : BitVec 64), Ext Γ Γ' → Heap a Γ q s →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q → E Γ q s.memory → H.toNat = q.hp →
      FBlk a.p0 H n Γ' q' → st.memory = s.memory → Q H Γ' q' st.memory)
    {k : ProgHOL 64} {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hk : ∀ H : BitVec 64, HoareG σ guestCtx (GI a (Trie.LV ((x, ValueHOL.val (.word H)) :: kv)) (Q H)) k
      (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, Trie.LV kv m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ guestCtx (GI a (Trie.LV kv) E) (.decCall x .one (nm "alloc") [e] k) (GP a L3 E2 Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hZ : (BitVec.ofNat 64 n).toNat = n := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn64]
  refine gp_decCallX ha (cs := []) (capSub_nil _) (sa_cast hCb haH Dn.alloc_R) (funSpec_allocRel hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ H : BitVec 64, v = .val (.word H) ∧ Trie.LV ((x, v) :: kv) m)
    (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) → Q H Γ q mm) (L2 := L2) (E2 := E2)
    ?_ ?_ ?_ ?_ hres
  · intro s Γ q hs hL hh hE vs hvs
    rw [hev s hL] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl (hev s hL)).1, fun x hx => argCells_any (by simp) hx |>.elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ' hh hext hh' hmo hnf hnfp hmd hret
    rw [hev s hL] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells [PT.any] [.val (.word (BitVec.ofNat 64 n))] y :=
      fun y => argCells_any (by simp)
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh H hH => ?_⟩
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [.val (.word (BitVec.ofNat 64 n))] Γ Γ' q q'
        s st r := ⟨hh, hext, hh', hmo, hnf, hnfp,
      fun x hw hal => hmd x hw (hnoarg x) (by rintro ⟨-, c, hc, -⟩; simp at hc) hal, hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv (by rw [hZ]; exact hn8)
    rw [hv'] at hH
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
    subst hH
    rw [hZ] at hFB
    exact hQ s st Γ Γ' q q' H' hext hh hh' hmo (hnfp rfl) hE hHn hFB hmem
  · intro s st v hL hsh
    obtain ⟨H, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨H, rfl, Trie.lv_cons (Trie.lv_set hL hx _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨H, hH, -⟩ := h.1; exact ⟨H, hH⟩)
    obtain ⟨H, rfl⟩ := hw
    exact hoareG_pre (hk H) (fun s _ ⟨⟨H', hH', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH'
      subst hH'
      exact ⟨hL, Γ, q, he, hh, hsc, hE H rfl⟩)

theorem mul32_eq {I : BitVec 64} (h : I.toNat < 2 ^ 20) : I * 32#64 = BitVec.ofNat 64 (I.toNat * 32) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]

theorem size_eq {N : BitVec 64} (h : N.toNat < 2 ^ 20) :
    N * 32#64 + 8#64 = BitVec.ofNat 64 (N.toNat * 32 + 8) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

def crhSig : Sig := ⟨[.any, .any, .buf 32], [], [], false⟩

def CrhPre (vs : List (ValueHOL 64)) (_s : State σ) (_Γ : Gam) : Prop :=
  ∃ A N O : BitVec 64, vs = [.val (.word A), .val (.word N), .val (.word O)] ∧ N.toNat < 2 ^ 20

def kvC (A N O : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "arr", .val (.word A)), (nm "n", .val (.word N)), (nm "out", .val (.word O))]

def kvM (Mk A N O : BitVec 64) : List (MlS × ValueHOL 64) := (nm "mark", .val (.word Mk)) :: kvC A N O
def kvT (C Mk A N O : BitVec 64) : List (MlS × ValueHOL 64) := (nm "cat", .val (.word C)) :: kvM Mk A N O
def kvI (I C Mk A N O : BitVec 64) : List (MlS × ValueHOL 64) := (nm "i", .val (.word I)) :: kvT C Mk A N O

/-- The window and the fresh `cat` block. -/
def ELp (a : Act σ) (Mk C N : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  Win a Mk Γ q ∧ FBlk a.p0 C (N.toNat * 32 + 8) Γ q

def Lloop (C Mk A N O : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I : BitVec 64, I.toNat ≤ N.toNat ∧ Trie.LV (kvI I C Mk A N O) m

theorem fresh_of {kv : List (MlS × ValueHOL 64)} {x : MlS} (h : ∀ y ∈ kv.map Prod.fst, y ≠ x) :
    ∀ p ∈ kv, p.1 ≠ x :=
  fun p hp => h p.1 (List.mem_map.mpr ⟨p, hp, rfl⟩)

macro "crh_fresh" : tactic =>
  `(tactic| (apply fresh_of; simp only [kvI, kvT, kvM, kvC, List.map_cons, List.map_nil]; decide))

theorem sha_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "sha256")
      ⟨[.any, .any, .buf 32], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

/-- **The loop body** at index `I < N`. -/
theorem crh_body {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {I C Mk A N O : BitVec 64} (hN : N.toNat < 2 ^ 20)
    (hI : I.toNat < N.toNat) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (Trie.LV (kvI I C Mk A N O)) (fun Γ q _ => ELp a Mk C N Γ q))
      (.seq (callD (nm "sha256") [crhSl, crhSl8, crhDst])
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))
      (GP a (Lloop C Mk A N O) (fun Γ q _ => ELp a Mk C N Γ q) Rv) := by
  have hS : SumSpecA σ guestCtx a.Cb a.H (nm "sha256") ⟨[.any, .any, .buf 32], [], [], false⟩
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact sumA_of_csumm sha_C
  have hoff : I * 32#64 = BitVec.ofNat 64 (I.toNat * 32) := mul32_eq (by omega)
  refine gp_seq (Ra.gp_callFM ha hS (funSpec_true _) (by simp) (fun h => by simp at h)
    (E' := fun Γ q _ => ELp a Mk C N Γ q) ?_ ?_) ?_
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    have e3 : ev s crhDst = some (.val (.word (C + I * 32#64))) :=
      ev_add2 (Trie.lv_ev hL (x := nm "cat") (v := .val (.word C)) (by simp [kvI, kvT]))
        (ev_mul2 (Trie.lv_ev hL (x := nm "i") (v := .val (.word I)) (by simp [kvI])) (ev_cw s 32))
    have := evs_nil_eq hvs3
    subst this
    rw [h3] at e3
    cases e3
    rw [hoff]
    obtain ⟨-, hB, hF⟩ := blk_buf hCb hE.2 (heap_ord hh) (off := I.toNat * 32) (n := 32) (by omega) (by omega)
    exact ⟨ao_aab _ _ _ hB, fun x hx => Or.inr (Or.inr (Or.inl (hF x (ac_aab hx)).2.1)), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun _ => ⟨win_cof haC co rfl hE.1,
      fblk_persist hE.2 (heap_ord co.heap0).2.1 (co.nfp rfl) co.mono⟩⟩
  · refine gp_assign ha.hH fun s hs hL v hv => ⟨I + BitVec.ofNat 64 1, ?_, ?_⟩
    · have : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
      omega
    · rw [ev_add2 (Trie.lv_ev hL (x := nm "i") (v := .val (.word I)) (by simp [kvI])) (ev_cw s 1)] at hv
      cases hv
      exact Trie.lv_new (Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ hp) (by crh_fresh) _

/-- **The loop.** -/
theorem crh_loop {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {C Mk A N O : BitVec 64} (hN : N.toNat < 2 ^ 20)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (Lloop C Mk A N O) (fun Γ q _ => ELp a Mk C N Γ q)) crhLoop
      (GP a (Trie.LV (kvT C Mk A N O)) (fun Γ q _ => ELp a Mk C N Γ q) Rv) := by
  unfold crhLoop
  refine gp_while ha.hH ?_ ?_
  · intro s hs ⟨⟨⟨I, hIN, hL⟩, Γ, q, he, hh, hsc, hE⟩, hc⟩ hg
    have hlt := Aw.less_lt (x := I) (y := N) (by omega)
      (cmp_true' (Trie.lv_ev hL (x := nm "i") (v := .val (.word I)) (by simp [kvI]))
        (Trie.lv_ev hL (x := nm "n") (v := .val (.word N)) (by simp [kvI, kvT, kvM, kvC])) hc)
    exact crh_body ha haC hCb haH hN hlt.2 s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg
  · rintro s _ ⟨⟨I, -, hL⟩, Γ, q, he, hh, hsc, hE⟩ _
    exact ⟨Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ hp, Γ, q, he, hh, hsc, hE⟩

/-- **The tail**: `sha256(cat, n * 32, out); heap_release(mark); return 0`. -/
theorem crh_tail {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {C Mk A N O : BitVec 64}
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q O.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap O.toNat 32 x → a.Foot x) {L2 : LocalsH → Prop} :
    HoareG σ guestCtx (GI a (Trie.LV (kvT C Mk A N O)) (fun Γ q _ => ELp a Mk C N Γ q)) crhTail
      (GP a L2 (fun _ _ _ => True) (fun _ _ _ _ => True)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hS : SumSpecA σ guestCtx a.Cb a.H (nm "sha256") ⟨[.any, .any, .buf 32], [], [], false⟩
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact sumA_of_csumm sha_C
  unfold crhTail
  refine gp_seq (Ra.gp_callFM ha hS (funSpec_true _) (by simp) (fun h => by simp at h)
    (E' := fun Γ q _ => Win a Mk Γ q) ?_ ?_) ?_
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    have e3 := Trie.lv_ev hL (x := nm "out") (v := .val (.word O)) (by simp [kvT, kvM, kvC])
    have := evs_nil_eq hvs3
    subst this
    rw [h3] at e3
    cases e3
    exact ⟨ao_aab _ _ _ (hOutB s Γ q hh), fun x hx => hOutF x (ac_aab hx), fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ co
    exact ⟨scrOld_cof haC co rfl, fun _ => win_cof haC co rfl hE.1⟩
  refine gp_seq (Ra.gp_relH ha hX (E' := fun _ _ _ => True) (mk := nm "mark") (Mk := Mk)
    (fun m h => h (nm "mark", .val (.word Mk)) (by simp [kvT, kvM])) (fun s Γ q hh hE => winOK_win ha haC hh hE)
    (fun _ _ _ _ => trivial)) ?_
  exact gp_ret ha.hH fun _ _ _ _ _ _ _ _ _ _ => trivial

/-- **The body** from the entry locals. -/
theorem crh_all {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {A N O : BitVec 64} (hN : N.toNat < 2 ^ 20)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q O.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap O.toNat 32 x → a.Foot x) :
    HoareG σ guestCtx (GI a (Trie.LV (kvC A N O)) (fun _ _ _ => True)) crhBody
      (GP a (fun _ => False) (fun _ _ _ => True) (fun _ _ _ _ => True)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold crhBody
  refine Ra.gp_markH ha hX (L1 := fun w => Trie.LV (kvM w A N O)) (E1 := fun w Γ q _ => Win a w Γ q)
    (L2 := fun _ => False) (fun s st w hL => Trie.lv_new (s := { st with locals := s.locals }) hL (by crh_fresh) _)
    (fun s Γ q w hh _ hw => win_mark haC hh hw) ?_ (fun _ _ _ h => h.elim)
  intro Mk
  refine gp_allocE ha haC hCb haH (n := N.toNat * 32 + 8) (by omega) (by omega) (x := nm "cat")
    (kv := kvM Mk A N O) (by crh_fresh) (e := crhSize) ?_
    (fun C Γ q _ => ELp a Mk C N Γ q) ?_ (L2 := fun _ => False) ?_ (fun _ _ _ h => h.elim)
  · intro s hL
    have e := ev_add2 (ev_mul2 (Trie.lv_ev hL (x := nm "n") (v := .val (.word N)) (by simp [kvM, kvC]))
      (ev_cw s 32)) (ev_cw s 8)
    rw [size_eq hN] at e
    exact evs_cons e evs_nil
  · intro s st Γ Γ' q q' H hext hh hh' hmo hnf0 hE hHn hFB hmem
    exact ⟨⟨hE.1, hE.2.1, le_trans hE.2.2.1 hmo.1, hi_nf0 (heap_ord hh') (layout_heap haC hh') hnf0 hE.2.2.2⟩,
      hFB⟩
  intro C
  refine gp_dec ha.hH (L1 := Lloop C Mk A N O) (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨BitVec.ofNat 64 0, by simp, Trie.lv_new hL (by crh_fresh) _⟩
  exact gp_seq (crh_loop ha haC hCb haH hN) (crh_tail ha haC hCb haH hOutB hOutF)

/-- **`compute_requests_hash`'s summary.** -/
theorem sumSpecA_compute_requests_hash :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "compute_requests_hash") crhSig CrhPre
      (fun _ _ _ _ => False) (fun _ _ Γ _ _ Γ' => ScrOld Γ Γ') := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_mono (sumSpecA_of_gp (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_)
    (fun _ _ _ h => h) (fun _ _ _ _ h => h) (fun _ _ _ _ _ _ h => h.1)
  intro vs body callee rs hl s0 hs0 hloc Γ0 p0 hpre ha hh
  obtain ⟨A, N, O, rfl, hN⟩ := hpre
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_crh hl
  have hL0 : Trie.LV (kvC A N O) s0.locals := by
    intro q hq
    simp only [kvC, List.mem_cons, List.not_mem_nil, or_false] at hq
    rw [hloc]
    rcases hq with rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
  have hbufO : BufOK Types.guestC Γ0 p0 O.toNat 32 := by
    obtain ⟨w, hw, hb⟩ := ha.hargs0.2 2 (.buf 32) (.val (.word O)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hb
  have hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs),
      Heap (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) crhSig [] [.val (.word A), .val (.word N),
        .val (.word O)] s0 Γ0 p0) Γ q s → BufOK Types.guestC Γ q O.toNat 32 :=
    fun s Γ q hh' => bufOK_ext ha.hord0 (heap_ord hh') hh'.2.2.1 hh'.2.2.2.1 hh'.2.2.2.2.1 hbufO
  refine hoareG_conseq (crh_all (A := A) ha rfl rfl rfl hN hOutB (fun x hx =>
      Or.inr (Or.inl ⟨2, O, by simp [actOf, crhSig, argW, wordOf], Or.inl ⟨32, rfl, hx⟩⟩)))
    (fun t _ ht => ?_) (fun r t _ _ h r' hr hna => ?_)
  · subst ht
    exact ⟨hL0, Γ0, p0, ext_refl _, hh, scrOld_refl _, trivial⟩
  · obtain ⟨Γ', p', e1, e2, e3, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, e3, fun v hv => ⟨Dn.retOK_nil, trivial⟩⟩

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.gp_allocE
#print axioms InitECandidate.Solver.MemSafe.Exb.crh_body
#print axioms InitECandidate.Solver.MemSafe.Exb.sumSpecA_compute_requests_hash
