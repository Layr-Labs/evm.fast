import InitECandidate.Solver.MemSafe.HtabEntries.NewScratchCode
import InitECandidate.Solver.MemSafe.HtabEntries.New

/-!
# `htab_new_scratch` creates a well-formed empty table in fresh scratch

`funSpec_htab_new_scratch` (returns only): from an ordered allocator state `p0`, a returning
`htab_new_scratch(KL, CP)` (`KL ≤ 2^16`, `CP ≤ 2^20`) returns a header `T` of a well-formed empty
table whose region consists of bytes that are live scratch at exit and were unallocated at
entry; memory changes only in the header; only `scratch_ptr` moves (`NewPostS`).

The proof follows `newBody_hoare` (`Spec/Inv/HtabNew.lean`); the allocator step is the
built-in `AllocSpec` of `scratch_alloc` (`hoare_decCall_salloc`), which hands out aligned
blocks that were unallocated before the call, so the four blocks are pairwise disjoint.
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.AllocImpl
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.Spec.Inv

variable {σ : Type} {X : Ctx 64}

/-- `var x = scratch_alloc(sz); k`, returns only. -/
theorem hoare_decCall_salloc (hC : X.code.lookup = guestCode) {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {x : MlS} {sz : ExpHOL 64}
    {k : ProgHOL 64}
    (hpre : ∀ u, P u → ∃ p Nz, ptrsOf u = some p ∧ p.Ordered ∧ ev u sz = some (.val (.word Nz)))
    (hk : ∀ u, InCtx u X → P u → ∀ (p : Ptrs) (Nz q : BitVec 64) (p' : Ptrs) (st : State σ),
      ptrsOf u = some p → ev u sz = some (.val (.word Nz)) →
      st.memory = u.memory → (∀ g, g ≠ gScratch → st.globals.lookup g = u.globals.lookup g) →
      st.be = u.be → st.memaddrs = u.memaddrs → ptrsOf st = some p' → p'.Ordered → p.Mono p' →
      q.toNat % 8 = 0 → p'.sp ≤ q.toNat → q.toNat + Nz.toNat ≤ scratchEnd →
      (∀ a, q.toNat ≤ a → a < q.toNat + Nz.toNat → ¬ p.Allocated a) →
      Hoare σ X (fun t => t = setVarHOLFinite x (.val (.word q)) { st with locals := u.locals }) k
        (fun r t => Q r { t with locals := t.locals.resVarEq (x, u.locals.lookup x) })) :
    Hoare σ X P (.decCall x .one (nm "scratch_alloc") [sz] k) Q := by
  refine hoare_decCallS (FunSpec.and (allocSpec_scratch_alloc hC) (Helpers.funSpec_dom _))
    fun u hu hp vs hvs callee v st hR _ _ => ?_
  obtain ⟨p, Nz, hpu, hord, hsz⟩ := hpre u hp
  obtain ⟨hA, hd, hbe⟩ := hR
  obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
  have hr : r1 = [] := by
    have h0 : evs u ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr1; exact (Option.some.inj hr1).symm
  subst hr
  rw [hsz] at ha
  have ha' := (Option.some.inj ha).symm
  subst ha'
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p := (ptrsOf_congr rfl).trans hpu
  obtain ⟨hm, hgl, p', hp', hord', hmono, hret⟩ := hA (by simp [Good]) Nz p rfl hpe hord
  obtain ⟨q, rfl, hq8, hlive, hfresh⟩ := hret _ rfl
  exact hk u hu hp p Nz q p' st hpu hsz hm (fun g hg => hgl g hg) hbe hd hp' hord' hmono hq8
    hlive.1 hlive.2 hfresh

/-! ## The state facts carried through the body -/

/-- Memory `M`, allocator state `p` (ordered), only `scratch_ptr` moved since `s0`, byte order
and memory domain kept. -/
def NSS (s0 : State σ) (M : Mem) (p : Ptrs) (u : State σ) : Prop :=
  u.memory = M ∧ ptrsOf u = some p ∧ p.Ordered ∧
    (∀ g, g ≠ gScratch → u.globals.lookup g = s0.globals.lookup g) ∧ u.be = s0.be ∧
    u.memaddrs = s0.memaddrs

theorem nss_store {s0 u : State σ} {M : Mem} {p : Ptrs} {a x : BitVec 64} (h : NSS s0 M p u) :
    NSS s0 (upd M a x) p { u with memory := upd u.memory a x } := by
  obtain ⟨hm, h1, h2, h3, h4, h5⟩ := h
  exact ⟨by show upd u.memory a x = _; rw [hm], h1, h2, h3, h4, h5⟩

section proof
variable (s0 : State σ) (KL CP T : BitVec 64)

def NPS (M : Mem) (p : Ptrs) (E : State σ → Prop) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  r = none ∧ NSS s0 M p t ∧ NL KL CP T t ∧ E t

theorem newS_store {M : Mem} {p : Ptrs} {k : Nat} {e : ExpHOL 64} {val : BitVec 64}
    {E : State σ → Prop}
    (he : ∀ t, NL KL CP T t → E t → ev t e = some (.val (.word val)))
    (hE : ∀ t (M' : Mem), E t → E { t with memory := M' }) :
    Hoare σ X (NPS s0 KL CP T M p E none) (.store (tAddr k) e)
      (NPS s0 KL CP T (upd M (T + BitVec.ofNat 64 k) val) p E) := by
  refine hoare_store_w (fun _ => T + BitVec.ofNat 64 k) (fun _ => val) ?_ ?_ ?_
  · rintro t _ ⟨-, -, hl, -⟩ w hw
    rw [ev_tAddr hl.1] at hw; exact (Spec.Inv.word_inj hw).symm
  · rintro t _ ⟨-, -, hl, hx⟩ v hv
    rw [he t hl hx] at hv; exact (Option.some.inj hv).symm
  · rintro t _ ⟨-, hn, hl, hx⟩
    exact ⟨rfl, nss_store hn, hl, hE t _ hx⟩

variable (hC : X.code.lookup = guestCode)
include hC

/-- The allocation step inside the body. -/
theorem newS_alloc {M : Mem} {p : Ptrs} {x : MlS} {sz : ExpHOL 64} {Z : BitVec 64}
    {k : ProgHOL 64} {E : State σ → Prop} {E' : BitVec 64 → Ptrs → State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r t l, Q r t → Q r { t with locals := l })
    (hsz : ∀ t, NL KL CP T t → E t → ev t sz = some (.val (.word Z)))
    (hE' : ∀ (q : BitVec 64) (p' : Ptrs) t (st : State σ), NL KL CP T t → E t →
      E' q p' (setVarHOLFinite x (.val (.word q)) { st with locals := t.locals }))
    (hnx : x ≠ nm "t" ∧ x ≠ nm "key_len" ∧ x ≠ nm "cap" ∧ x ≠ nm "stride" ∧ x ≠ nm "ncap")
    (hk : ∀ (q : BitVec 64) (p' : Ptrs), p'.Ordered → p.Mono p' → q.toNat % 8 = 0 →
      p'.sp ≤ q.toNat → q.toNat + Z.toNat ≤ scratchEnd →
      (∀ a, q.toNat ≤ a → a < q.toNat + Z.toNat → ¬ p.Allocated a) →
      Hoare σ X (NPS s0 KL CP T M p' (E' q p') none) k Q) :
    Hoare σ X (NPS s0 KL CP T M p E none) (.decCall x .one (nm "scratch_alloc") [sz] k) Q := by
  refine hoare_decCall_salloc hC (fun u h =>
    ⟨p, Z, h.2.1.2.1, h.2.1.2.2.1, hsz u h.2.2.1 h.2.2.2⟩) ?_
  rintro u _ ⟨-, ⟨hm, hpu, -, hgl, hbe, hd⟩, hl, hxu⟩ p0 Nz q p' st hp0 hszu hsm hsgl hsbe hsd hp'
    hord' hmono hq8 hl1 hl2 hfr
  rw [hpu] at hp0
  have ep := Option.some.inj hp0
  subst ep
  rw [hsz u hl hxu] at hszu
  have eZ := (Spec.Inv.word_inj hszu).symm
  subst eZ
  refine hoare_post (hoare_pre (hk q p' hord' hmono hq8 hl1 hl2 hfr) ?_) fun r t _ _ h => hQ _ _ _ h
  rintro t _ rfl
  obtain ⟨n1, n2, n3, n4, n5⟩ := hnx
  refine ⟨rfl, ⟨by show st.memory = _; rw [hsm, hm], ?_, hord',
    fun g hg => by show st.globals.lookup g = _; rw [hsgl g hg, hgl g hg], by show st.be = _; rw [hsbe, hbe],
    by show st.memaddrs = _; rw [hsd, hd]⟩, ?_, hE' q p' u st hl hxu⟩
  · exact (ptrsOf_congr rfl).trans hp'
  · obtain ⟨l1, l2, l3, l4, l5⟩ := hl
    refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> unfold DLk at * <;> rw [lk_set_ne _ _ (by assumption)] <;>
      assumption

end proof

/-! ## The body -/

/-- What a returning `htab_new_scratch` guarantees, from entry `s0` with allocator state `p0`. -/
def NewPostS (s0 u : State σ) (p0 : Ptrs) (KL : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ (T : BitVec 64) (p' : Ptrs), v = .val (.word T) ∧ Spec.Inv.TableWF u T ∧
    Spec.Inv.CNT u.memory T = 0 ∧ Spec.Inv.hdr u.memory T 0 = KL ∧ 0 < (Spec.Inv.hdr u.memory T 8).toNat ∧
    ptrsOf u = some p' ∧ p'.Ordered ∧ p0.Mono p' ∧
    (∀ a, Spec.Inv.TableRegion u.memory T a →
      p'.sp ≤ a.toNat ∧ a.toNat < scratchEnd ∧ ¬ p0.Allocated a.toNat ∧ a.toNat < T.toNat + 88) ∧
    ModifiesOnly (fun a => Spec.Inv.InR a T 88) s0.memory u.memory ∧
    (∀ g, g ≠ gScratch → u.globals.lookup g = s0.globals.lookup g)

theorem allocated_mono {p p' : Ptrs} (hm : p.Mono p') {a : Nat} (h : p.Allocated a) :
    p'.Allocated a := by
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Ptrs.Allocated at *
  omega

/-- A block of allocated bytes and a block of unallocated bytes are disjoint. -/
theorem disj_alloc {p : Ptrs} {b1 n1 b2 n2 : Nat} (hn1 : 0 < n1) (hn2 : 0 < n2)
    (h1 : ∀ a, b1 ≤ a → a < b1 + n1 → p.Allocated a)
    (h2 : ∀ a, b2 ≤ a → a < b2 + n2 → ¬ p.Allocated a) : Spec.Inv.Disj b1 n1 b2 n2 := by
  unfold Spec.Inv.Disj
  by_contra hc
  simp only [not_or, not_le] at hc
  by_cases h : b1 ≤ b2
  · exact h2 b2 (le_refl _) (by omega) (h1 b2 h (by omega))
  · exact h2 b1 (by omega) (by omega) (h1 b1 (le_refl _) (by omega))

/-- Live scratch bytes are allocated. -/
theorem scr_alloc {p : Ptrs} {b n : Nat} (h1 : p.sp ≤ b) (h2 : b + n ≤ scratchEnd) :
    ∀ a, b ≤ a → a < b + n → p.Allocated a := fun a ha1 ha2 => by
  unfold Ptrs.Allocated; omega

section body
variable (s0 : State σ) (KL CP : BitVec 64)
variable (hC : X.code.lookup = guestCode) (hKL : KL.toNat ≤ 2 ^ 16) (hCP : CP.toNat ≤ 2 ^ 20)
include hC hKL hCP

theorem newBodyS_hoare (hK0 : 0 < KL.toNat)
    (hk0 : s0.locals.lookup (nm "key_len") = some (.val (.word KL)))
    (hc0 : s0.locals.lookup (nm "cap") = some (.val (.word CP))) {p0 : Ptrs}
    (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered) :
    Hoare σ X (fun t => t = s0) newBodyS
      (fun r t => ∀ v, r = some (.returned v) → NewPostS s0 t p0 KL v) := by
  have hse : scratchEnd = 2965299200 := rfl
  obtain ⟨sz1, sz2, sz3⟩ := new_sizes KL CP hC hKL hCP
  have hS := nS_toNat KL hKL
  have hCn := nC_toNat CP
  have hS8 : (nS KL).toNat % 8 = 0 := by rw [hS]; omega
  have hC2 : 2 ≤ (nC CP).toNat := by rw [hCn]; split <;> omega
  refine hoare_decCall_salloc hC (fun u hu => ⟨p0, BitVec.ofNat 64 88, by rw [hu]; exact hp0, hord0,
    ev_cw _ 88⟩) ?_
  intro u _ hu p Nz T p1 st hpu hsz hsm hsgl hsbe hsd hp1 hord1 hmono1 hT8 hT1 hT2 hTf
  subst u
  rw [hp0] at hpu
  have ep := Option.some.inj hpu
  subst ep
  rw [ev_cw] at hsz
  have e2 := Spec.Inv.word_inj hsz
  subst e2
  have h88 : (BitVec.ofNat 64 88).toNat = 88 := rfl
  rw [h88] at hT2 hTf
  -- `stride`
  refine hoare_dec fun u1 _ hu1 v hv _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals } := hu1
  subst hu1'
  have hklU : DLk (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals })
      "key_len" KL := by lks
  have hval : ev (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals })
      (.op .and [.op .add [lv (nm "key_len"), cw 7], .op .sub [cw 0, cw 8]]) =
      some (.val (.word (nS KL))) := by
    rw [ev_op2 (ev_add2 (ev_lv_w hklU) (ev_cw _ 7)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
    rfl
  rw [hval] at hv
  have e3 := (Option.some.inj hv).symm
  subst e3
  -- `ncap`
  refine hoare_dec fun u2 _ hu2 v2 hv2 _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
      (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals }) := hu2
  subst hu2'
  have hcU : DLk (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
      (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals })) "cap" CP := by lks
  rw [ev_lv_w hcU] at hv2
  have e4 := (Option.some.inj hv2).symm
  subst e4
  have hns : NSS s0 s0.memory p1 (setVarHOLFinite (nm "ncap") (.val (.word CP))
      (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
        (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals }))) :=
    ⟨hsm, (ptrsOf_congr rfl).trans hp1, hord1, hsgl, hsbe, hsd⟩
  refine hoare_seq (R := NPS s0 KL CP T s0.memory p1 (fun _ => True)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_assign fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
      subst ht
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_true hw hw0
      have hnc : DLk (setVarHOLFinite (nm "ncap") (.val (.word CP))
          (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
            (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals }))) "ncap" CP := by lks
      rw [ev_lv_w hnc] at ha
      rw [ev_cw] at hb
      have ea := Spec.Inv.word_inj ha
      have eb := Spec.Inv.word_inj hb
      subst ea eb
      have hlt' := lower_true hlt
      rw [ev_cw] at hv
      have e5 := (Option.some.inj hv).symm
      subst e5
      have hCe : nC CP = BitVec.ofNat 64 2 := by unfold nC; rw [if_pos (by simpa using hlt')]
      refine ⟨rfl, hns, ⟨by lks, by lks, by lks, by lks, ?_⟩, trivial⟩
      unfold DLk; rw [lk_set_self, hCe]
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
      subst ht
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_false hw
      have hnc : DLk (setVarHOLFinite (nm "ncap") (.val (.word CP))
          (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
            (setVarHOLFinite (nm "t") (.val (.word T)) { st with locals := s0.locals }))) "ncap" CP := by lks
      rw [ev_lv_w hnc] at ha
      rw [ev_cw] at hb
      have ea := Spec.Inv.word_inj ha
      have eb := Spec.Inv.word_inj hb
      subst ea eb
      have hge := lower_false hlt
      have hCe : nC CP = CP := by unfold nC; rw [if_neg (by simp at hge; omega)]
      refine ⟨rfl, hns, ⟨by lks, by lks, by lks, by lks, ?_⟩, trivial⟩
      rw [hCe]; exact hnc
  -- the four header stores
  refine hoare_seq (newS_store s0 KL CP T (k := 0) (fun t hl _ => ev_lv_w hl.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 8) (fun t hl _ => ev_lv_w hl.2.2.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 16) (fun t hl _ => ev_lv_w hl.2.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 24) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the key array
  refine newS_alloc s0 KL CP T hC (E' := fun q _ t => DLk t "keys" q)
    (fun _ _ _ h => h)
    (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_lv_w hl.2.2.2.1))
    (fun q _ t st _ _ => by unfold DLk; exact lk_set_self _ _ _) (by decide)
    fun K p2 hord2 hmono2 hK8 hK1 hK2 hKf => ?_
  rw [sz1] at hK2 hKf
  refine hoare_seq (newS_store s0 KL CP T (k := 32) (fun t _ hx => ev_lv_w hx) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the node array
  refine newS_alloc s0 KL CP T hC (E' := fun q _ t => DLk t "keys" K ∧ DLk t "nodes" q)
    (fun _ _ _ h => h)
    (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_cw t 32))
    (fun q _ t st _ hx => ⟨by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx,
      by unfold DLk; exact lk_set_self _ _ _⟩) (by decide)
    fun N p3 hord3 hmono3 hN8 hN1 hN2 hNf => ?_
  rw [sz2] at hN2 hNf
  refine hoare_seq (newS_store s0 KL CP T (k := 40) (fun t _ hx => ev_lv_w hx.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the order array
  refine newS_alloc s0 KL CP T hC
    (E' := fun q _ t => (DLk t "keys" K ∧ DLk t "nodes" N) ∧ DLk t "order" q)
    (fun _ _ _ h => h)
    (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_cw t 8))
    (fun q _ t st _ hx => ⟨⟨by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx.1,
      by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx.2⟩,
      by unfold DLk; exact lk_set_self _ _ _⟩) (by decide)
    fun O p4 hord4 hmono4 hO8 hO1 hO2 hOf => ?_
  rw [sz3] at hO2 hOf
  -- the tail
  refine hoare_seq (newS_store s0 KL CP T (k := 48) (fun t _ hx => ev_lv_w hx.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 56) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 64) (fun t _ _ => ev_cw t 1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 72) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (newS_store s0 KL CP T (k := 80) (fun t hl _ => ev_lv_w hl.2.2.2.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_return fun t _ ⟨_, ⟨hm, hpt, _, hgl, hbe, hd⟩, hl, _⟩ v hv => ?_
  rw [ev_lv_w hl.1] at hv
  have e6 := (Option.some.inj hv).symm
  subst e6
  intro v' hv'
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  -- the layout
  have hm23 := Struct.mono_trans hmono2 hmono3
  have hm24 := Struct.mono_trans hm23 hmono4
  have hm13 := Struct.mono_trans hmono1 hm23
  have hm14 := Struct.mono_trans hmono1 hm24
  have hm34 := hmono4
  have hTa : ∀ a, T.toNat ≤ a → a < T.toNat + 88 → p1.Allocated a := scr_alloc hT1 hT2
  have hKa : ∀ a, K.toNat ≤ a → a < K.toNat + ((nC CP).toNat + 1) * (nS KL).toNat → p2.Allocated a :=
    scr_alloc hK1 hK2
  have hNa : ∀ a, N.toNat ≤ a → a < N.toNat + ((nC CP).toNat + 1) * 32 → p3.Allocated a :=
    scr_alloc hN1 hN2
  have hSpos : 0 < ((nC CP).toNat + 1) * (nS KL).toNat := by
    have : 8 ≤ (nS KL).toNat := by rw [hS]; omega
    exact Nat.mul_pos (by omega) (by omega)
  have dTK := disj_alloc (by omega) hSpos hTa hKf
  have dTN := disj_alloc (by omega) (by omega) (fun a h1 h2 => allocated_mono hmono2 (hTa a h1 h2)) hNf
  have dKN := disj_alloc hSpos (by omega) hKa hNf
  have dTO := disj_alloc (by omega) (by omega) (fun a h1 h2 => allocated_mono hm23 (hTa a h1 h2)) hOf
  have dKO := disj_alloc hSpos (by omega) (fun a h1 h2 => allocated_mono hmono3 (hKa a h1 h2)) hOf
  have dNO := disj_alloc (by omega) (by omega) hNa hOf
  unfold Spec.Inv.Disj at dTK dTN dKN dTO dKO dNO
  have hsb : (nS KL).toNat ≤ 2 ^ 20 := by rw [hS]; omega
  have hcb : (nC CP).toNat ≤ 2 ^ 32 := by rw [hCn]; split <;> omega
  have hcomm : (nS KL).toNat * ((nC CP).toNat + 1) = ((nC CP).toNat + 1) * (nS KL).toNat :=
    Nat.mul_comm _ _
  obtain ⟨sep', sh', ex', hcnt', h0', hreg'⟩ := newMem_wfD (m := s0.memory) (d := s0.memaddrs)
    (be := s0.be) (T := T) (KL := KL) (S := nS KL) (CP := CP) (C := nC CP) (K := K) (N := N) (O := O)
    hT8 hK8 hN8 hO8 hS8 (by rw [hS]; omega) hC2 hsb hcb (by omega) (by omega) (by omega)
    (by omega)
    (by unfold Spec.Inv.Disj; omega) (by unfold Spec.Inv.Disj; omega)
    (by unfold Spec.Inv.Disj; omega) (by unfold Spec.Inv.Disj; omega)
    (by unfold Spec.Inv.Disj; omega) (by unfold Spec.Inv.Disj; omega)
  have hmod : ModifiesOnly (fun a => Spec.Inv.InR a T 88) s0.memory
      (newMem s0.memory T KL (nS KL) CP (nC CP) K N O) := fun a ha => newMem_out (by omega) ha
  have hmem : (emptyLocalsHOLFinite t).memory =
      newMem s0.memory T KL (nS KL) CP (nC CP) K N O := hm
  have hd' : (emptyLocalsHOLFinite t).memaddrs = s0.memaddrs := hd
  have hbe' : (emptyLocalsHOLFinite t).be = s0.be := hbe
  have hgl' : ∀ g, g ≠ gScratch → (emptyLocalsHOLFinite t).globals.lookup g = s0.globals.lookup g := hgl
  have hpt' : ptrsOf (emptyLocalsHOLFinite t) = some p4 := (ptrsOf_congr rfl).trans hpt
  have h8' : (Spec.Inv.hdr (newMem s0.memory T KL (nS KL) CP (nC CP) K N O) T 8) = nS KL := by
    have := newMem_hdr (m := s0.memory) (KL := KL) (S := nS KL) (CP := CP) (C := nC CP) (K := K)
      (N := N) (O := O) (T := T) (by omega) 8 (by decide)
    simpa using this
  have hTv : ∀ a : Nat, T.toNat ≤ a → a < T.toNat + 88 → ¬ p0.Allocated a := hTf
  have hKv : ∀ a : Nat, K.toNat ≤ a → a < K.toNat + ((nC CP).toNat + 1) * (nS KL).toNat →
      ¬ p0.Allocated a := fun a h1 h2 h => hKf a h1 h2 (allocated_mono hmono1 h)
  have hNv : ∀ a : Nat, N.toNat ≤ a → a < N.toNat + ((nC CP).toNat + 1) * 32 →
      ¬ p0.Allocated a := fun a h1 h2 h => hNf a h1 h2 (allocated_mono (Struct.mono_trans hmono1 hmono2) h)
  have hOv : ∀ a : Nat, O.toNat ≤ a → a < O.toNat + ((nC CP).toNat + 1) * 8 →
      ¬ p0.Allocated a := fun a h1 h2 h => hOf a h1 h2 (allocated_mono hm13 h)
  have sp41 := hm24.2.2
  have sp42 := (Struct.mono_trans hmono3 hmono4).2.2
  have sp43 := hmono4.2.2
  -- the arrays lie below the header (scratch grows down)
  have hKt : ∀ a : Nat, K.toNat ≤ a → a < K.toNat + ((nC CP).toNat + 1) * (nS KL).toNat →
      a < T.toNat := fun a h1 h2 => by
    have := hKf a h1 h2; unfold Ptrs.Allocated at this; omega
  have hNt : ∀ a : Nat, N.toNat ≤ a → a < N.toNat + ((nC CP).toNat + 1) * 32 → a < T.toNat :=
    fun a h1 h2 => by
      have := hNf a h1 h2; unfold Ptrs.Allocated at this; have := hmono2.2.2; omega
  have hOt : ∀ a : Nat, O.toNat ≤ a → a < O.toNat + ((nC CP).toNat + 1) * 8 → a < T.toNat :=
    fun a h1 h2 => by
      have := hOf a h1 h2; unfold Ptrs.Allocated at this; have := hm23.2.2; omega
  generalize newMem s0.memory T KL (nS KL) CP (nC CP) K N O = M at sep' sh' ex' hcnt' h0' hreg' hmem h8' hmod
  generalize emptyLocalsHOLFinite t = U at hmem hd' hbe' hgl' hpt' ⊢
  refine ⟨T, p4, rfl, ?_, (by rw [hmem]; exact hcnt'), (by rw [hmem]; exact h0'),
    (by rw [hmem, h8', hS]; omega), hpt', hord4, hm14, ?_, by rw [hmem]; exact hmod, hgl'⟩
  · unfold Spec.Inv.TableWF; rw [hmem, hd', hbe']; exact ⟨sep', _, sh', ex'⟩
  · intro a ha
    rw [hmem] at ha
    rcases (hreg' a).1 ha with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
    · exact ⟨by omega, by omega, hTv _ h1 h2, h2⟩
    · exact ⟨by omega, by omega, hNv _ h1 (by omega), by have := hNt _ h1 (by omega); omega⟩
    · exact ⟨by omega, by omega, hOv _ h1 (by omega), by have := hOt _ h1 (by omega); omega⟩
    · exact ⟨by omega, by omega, hKv _ h1 (by omega), by have := hKt _ h1 (by omega); omega⟩

end body

/-- **`htab_new_scratch` creates a well-formed empty table in fresh scratch** (returns). -/
theorem funSpec_htab_new_scratch (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_new_scratch") (fun vs s r u => ∀ (KL CP : BitVec 64) (p0 : Ptrs),
      vs = [.val (.word KL), .val (.word CP)] → ptrsOf s = some p0 → p0.Ordered →
      0 < KL.toNat → KL.toNat ≤ 2 ^ 16 → CP.toNat ≤ 2 ^ 20 →
      ∀ v, r = .returned v → NewPostS s u p0 KL v) := by
  intro vs body callee rs hl s hs hloc r hr KL CP p0 hvs hp0 hord hK0 hKL hCP v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_htab_new_scratch (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hk0 : s.locals.lookup (nm "key_len") = some (.val (.word KL)) := by rw [hloc]; exact hA
  have hc0 : s.locals.lookup (nm "cap") = some (.val (.word CP)) := by rw [hloc]; exact hB
  have H := newBodyS_hoare s KL CP hC hKL hCP hK0 hk0 hc0 hp0 hord s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H v rfl

/-- **The `htab_new_scratch` entry** for a constant instance, from the skeleton summary. The
arrays form one scratch object ending at the header (`tHTAs`, rev. 6). -/
theorem csumm_htab_new_scratch {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {KL CP : Nat} (hthk : htKL tHTs20 = KL) (hK0 : 0 < KL) (hK : KL ≤ 2 ^ 16)
    (hCP : CP ≤ 2 ^ 20)
    (hsk : CSumm σ X guestC H (nm "htab_new_scratch") ⟨[.eq KL, .eq CP], [], [], false⟩ []) :
    CSumm σ X guestC H (nm "htab_new_scratch") ⟨[.eq KL, .eq CP], [.fits (.ptr tHTs20)], [], true⟩ [] := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, -⟩, -⟩ :=
    hsk vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  have hnf := c9 rfl
  by_cases hret : ∃ v, r = .returned v
  · obtain ⟨v, rfl⟩ := hret
    obtain ⟨p0, hp0, ha⟩ := hargs
    have hvs := args_eq2 ha
    obtain ⟨pG, hpG, hord, hL, -⟩ := hG
    have hpeq : pG = p := Option.some.inj (hpG.symm.trans c1)
    subst hpeq
    have hKLn : (BitVec.ofNat 64 KL).toNat = KL := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hCPn : (BitVec.ofNat 64 CP).toNat = CP := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    obtain ⟨T, p'', rfl, hwf, hcnt, hkl, h8, hp'', hord'', hmono, hreg, -, -⟩ :=
      funSpec_htab_new_scratch hF.hX vs body callee rs hl s hs hloc _ hr
        (BitVec.ofNat 64 KL) (BitVec.ofNat 64 CP) pG hvs hpG hord (by rw [hKLn]; exact hK0)
        (by rw [hKLn]; exact hK) (by rw [hCPn]; exact hCP) _ rfl
    rw [c2] at hp''
    have hpe' := Option.some.inj hp''
    subst hpe'
    set u := (evaluateHOLFiniteState s body).2
    have hl0 := Spec.Inv.lay_of_sep hwf.1
    have hse : scratchEnd < 2 ^ 64 := by decide
    have hT8 := hl0.t8
    have hsp8 := hord''.2.2.2.2.2.2.2
    have hspf := hord''.2.2.2.1
    have hfe := hord''.2.2.1
    have hspe := hord''.2.2.2.2.1
    have hpg1 := hord.2.1
    have hm := hmono
    unfold Ptrs.Mono at hm
    -- the header lies below the entry scratch pointer
    have e87 : (T + BitVec.ofNat 64 87).toNat = T.toNat + 87 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : 87 < 2 ^ 64),
        Nat.mod_eq_of_lt (by have := hl0.ht; omega)]
    obtain ⟨-, q2, q3, -⟩ := hreg (T + BitVec.ofNat 64 87)
      (Or.inl ⟨by rw [e87]; omega, by rw [e87]; omega⟩)
    rw [e87] at q2 q3
    have hT88 : T.toNat + 88 ≤ pG.sp := by
      by_contra hc
      exact q3 (Or.inr (Or.inr ⟨by omega, q2⟩))
    -- the arrays lie below the header
    obtain ⟨hnb, hnd⟩ := tab_nodeByte hwf
    obtain ⟨n1, -, -, n4⟩ := hreg _ hnb
    have hlt : p'.sp < T.toNat := by omega
    have hfree : ∀ a : BitVec 64, p'.sp ≤ a.toNat → a.toNat < T.toNat + 88 →
        InLiveB p' .scratch a.toNat ∧ ¬ InObj Γ' a.toNat := fun a h1 h2 =>
      ⟨⟨h1, by omega⟩, fun hin => by
          have := alloc_of_inObj hord hL hnf hin
          unfold Ptrs.Allocated at this
          have := hord.2.2.2.1
          omega⟩
    have hG'' := G_addTableG hF.hH hM hT (th := tHTs20) (ta := tHTAs) (rg := .scratch) rfl
      (Or.inl rfl) rfl rfl (le_refl _) (le_refl _) hts20_prot htas_prot (by decide) (by decide) c6 c2
      hwf hcnt (by rw [hkl, hthk]) (lo := p'.sp) (hi := T.toNat) hsp8 hT8 hlt (by omega) (Or.inr (le_refl _))
      (Or.inr ⟨rfl, rfl⟩)
      (fun a ha => by
        obtain ⟨r1, -, -, r4⟩ := hreg a ha
        unfold Spec.Inv.InR
        by_cases h : T.toNat ≤ a.toNat
        · exact Or.inl ⟨h, r4⟩
        · exact Or.inr ⟨r1, by omega⟩)
      (fun a h1 h2 => hfree a h1 (by omega))
      (fun a h1 h2 => hfree a (by omega) h2)
    refine ⟨Γ' ++ [arrObjT tHTAs p'.sp T.toNat] ++ [hdrObjT tHTs20 T], pG, p', ⟨hpG, c2, c3, ?_, ?_,
      hG'', c7, c8, (fun h => by cases h), ?_⟩, trivial⟩
    · intro o ho
      obtain ⟨o', ho', h1, h2, h3⟩ := c4 o ho
      exact ⟨o', by simp [ho'], h1, h2, h3⟩
    · intro o ho a h1 h2
      simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
      rcases ho with ho | ho
      · exact c5 o ho a h1 h2
      · right; right; right
        have hb := newObj_bytes (by omega) (by omega) ho h1 h2
        exact ⟨by omega, by omega⟩
    · intro v' hv'
      cases hv'
      exact retOK_ptr ⟨hdrObjT tHTs20 T, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
  · exact ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, (fun h => by cases h),
      fun v hv => absurd ⟨v, hv⟩ hret⟩, trivial⟩

end InitECandidate.Solver.MemSafe.HtabEntries
