import InitECandidate.Solver.Spec.Mpt.Fill.Pop
import InitECandidate.Solver.MemSafe.Alloc

/-!
# The push arm of `_node_rlp_fill`

`var cf = scratch_alloc(48); st cf, top; st cf + 8, child; st cf + 16, 0;
_node_rlp_begin(cf, child); top = cf;` — the fresh record lies below the old `scratch_ptr`,
the stores and `_node_rlp_begin` write only the record and unallocated cells (`SafeW`), so the
old chain survives below the new head; `scratch_ptr` drops by at least 48.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- A record store, tracking `be`. -/
theorem st_stepB {t0 : PanSemStateFiniteExact 64 σ} {Mi : MemSafe.Mem} {fr : MlS} {k : Nat}
    {e : ExpHOL 64} {q V : BitVec 64} (hq : t0.locals.lookup fr = some (.val (.word q)))
    (hv : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = t0.locals → ev t e = some (.val (.word V))) :
    Hoare σ X (fun t => t.locals = t0.locals ∧ t.globals = t0.globals ∧ t.be = t0.be ∧
        t.memory = Mi) (.store (.op .add [lv fr, cw k]) e)
      (fun r t => r = none ∧ t.locals = t0.locals ∧ t.globals = t0.globals ∧ t.be = t0.be ∧
        t.memory = upd Mi (q + BitVec.ofNat 64 k) (.word V)) := by
  refine hoare_store fun t _ ⟨hl, hg, hbe, hm⟩ w v mem hw hv' hmem => ?_
  rw [ev_add_cw (by rw [hl]; exact hq) k] at hw
  cases hw
  rw [hv t hl] at hv'
  cases hv'
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  exact ⟨rfl, hl, hg, hbe, by rw [← hm]; rfl⟩

theorem align_ge {h : Nat} {a : BitVec 64} (h8 : h % 8 = 0) (hle : h ≤ a.toNat) :
    h ≤ (panByteAlignHOL a).toNat := by
  unfold panByteAlignHOL
  have e : 2 ^ Nat.log2 (64 / 8) = 8 := by decide
  simp only [e, BitVec.toNat_ofNat]
  have := a.isLt
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

theorem safeW_mono {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP HP' lo hi : Nat} (hle : HP ≤ HP') (hk1 : gword t gKst = gword s gKst)
    (hk2 : gword t gKpad = gword s gKpad) {x : BitVec 64} (h : SafeW t Nd HP' lo hi x) :
    SafeW s Nd HP lo hi x := by
  rcases h with h | h | h | ⟨h1, h2⟩ | h
  · exact Or.inl h
  · exact Or.inr (Or.inl ((kbuf_congr hk1 hk2 x).mp h))
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, h2⟩)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr h)))

theorem gword_glob {s t : PanSemStateFiniteExact 64 σ} {g : MlS}
    (h : t.globals.lookup g = s.globals.lookup g) : gword t g = gword s g := by
  unfold gword; rw [h]

/-- The extra facts the push arm needs. -/
def PushPre (Nd : BitVec 64 → Prop) (N C : BitVec 64) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "child") = some (.val (.word C)) ∧ Nd C ∧ rd t.memory C ≠ 0 ∧
    rd t.memory N ≠ 1

/-- **The push arm.** -/
theorem push_step (hC : X.code.lookup = guestCode) (hbeg : BeginSpec σ X)
    {Nd : BitVec 64 → Prop} {HP0 S0 d : Nat} {p : Ptrs} {T N C : BitVec 64} :
    Hoare σ X (fun t => ArmPre Nd HP0 S0 d p T N t ∧ PushPre Nd N C t) pushArm
      (fun r t => r = none ∧ FInv Nd HP0 S0 t ∧ fMu t < (p.sp - heapEnd) / 24 + (d + 1)) := by
  unfold pushArm
  refine hoare_decCallS ((MemSafe.allocSpec_scratch_alloc hC).and (funSpec_be _))
    fun t1 _ ⟨⟨hp, hord, h0, hb0, hsp, hS0, htr, hT, hN, hT8, hch⟩, hC0, hNdC, hkC, hkN⟩ vs hvs callee
      v st ⟨hA, hbeA⟩ _ _ => ?_
  rw [evs_cons (ev_cw _ 48) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hmA, hgA, p', hp', hord', hmono, hq⟩ := hA (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hhp := hord.2.1
  have hspE := heapEnd_le_sp hord
  have hspE' := heapEnd_le_sp hord'
  have hm1 := hmono.1
  have hm3 := hmono.2.2
  have hS := scratchEnd_lt
  have hq48 : q.toNat + 48 ≤ p.sp := by
    by_contra hlt
    exact hfree (q.toNat + 47) (by omega) (by omega) (Or.inr (Or.inr ⟨by omega, by omega⟩))
  have hk1A : gword st gKst = gword t1 gKst := gword_glob (hgA _ (by decide))
  have hk2A : gword st gKpad = gword t1 gKpad := gword_glob (hgA _ (by decide))
  set t2 := setVarHOLFinite (nm "cf") (.val (.word q)) { st with locals := t1.locals } with ht2
  have hcf : t2.locals.lookup (nm "cf") = some (.val (.word q)) := lk_set_self _ _ _
  have hl2' : ∀ y, y ≠ nm "cf" → t2.locals.lookup y = t1.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hT2 : t2.locals.lookup (nm "top") = some (.val (.word T)) := by
    rw [hl2' _ (by decide)]; exact hT
  have hC2 : t2.locals.lookup (nm "child") = some (.val (.word C)) := by
    rw [hl2' _ (by decide)]; exact hC0
  let M3 : MemSafe.Mem := upd (upd (upd t1.memory (q + BitVec.ofNat 64 0) (.word T))
    (q + BitVec.ofNat 64 8) (.word C)) (q + BitVec.ofNat 64 16) (.word (BitVec.ofNat 64 0))
  have hq0 : (q + BitVec.ofNat 64 0).toNat = q.toNat := toNat_add_k (by omega)
  have hq8 : (q + BitVec.ofNat 64 8).toNat = q.toNat + 8 := toNat_add_k (by omega)
  have hq16 : (q + BitVec.ofNat 64 16).toNat = q.toNat + 16 := toNat_add_k (by omega)
  have hM3 : ∀ x : BitVec 64, M3 x ≠ t1.memory x → q.toNat ≤ x.toNat ∧ x.toNat < q.toNat + 48 := by
    intro x hx
    simp only [M3, upd] at hx
    split at hx
    · rename_i e; subst e; omega
    split at hx
    · rename_i e; subst e; omega
    split at hx
    · rename_i e; subst e; omega
    exact absurd rfl hx
  -- the three stores, then `_node_rlp_begin`, then `top = cf`
  refine hoare_conseq (P := fun t => t = t2) (Q := fun r t => r = none ∧
      FInv Nd HP0 S0 t ∧ fMu t < (p.sp - heapEnd) / 24 + (d + 1)) ?_ (fun _ _ h => h) ?_
  rotate_left
  · intro r t _ _ ⟨hr, hI, hmu⟩
    have hc := finv_congr (s := t)
      (t := { t with locals := t.locals.resVarEq (nm "cf", t1.locals.lookup (nm "cf")) })
      rfl rfl rfl (lookup_resVarEq_ne _ _ (by decide)) hI
    exact ⟨hr, hc.1, by rw [hc.2]; exact hmu⟩
  unfold pushK
  refine hoare_pre (P := fun t => t.locals = t2.locals ∧ t.globals = t2.globals ∧ t.be = t2.be ∧
    t.memory = t1.memory) ?_ (fun t _ ht => by subst ht; exact ⟨rfl, rfl, rfl, hmA⟩)
  refine hoare_seq (st_stepB hcf (fun t h => by rw [ev_lv, h]; exact hT2))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_stepB hcf (fun t h => by rw [ev_lv, h]; exact hC2))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_stepB (V := BitVec.ofNat 64 0) hcf (fun t _ => ev_cw t 0))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (P := fun t => t.locals = t2.locals ∧
      t.globals = t2.globals ∧ t.be = t2.be ∧ t.memory = M3) ?_ fun _ _ h => h.2)
  -- `_node_rlp_begin(cf, child)`
  refine hoare_seq (R := fun r u => r = none ∧ u.locals = t2.locals ∧
      ∃ p'' : Ptrs, ptrsOf u = some p'' ∧ p''.Ordered ∧ p'.hp ≤ p''.hp ∧ p''.sp = p'.sp ∧
        gword u gKst = gword t1 gKst ∧ gword u gKpad = gword t1 gKpad ∧ u.be = t1.be ∧
        (∀ x, u.memory x ≠ t1.memory x → SafeW t1 Nd p.hp p.sp S0 x) ∧
        u.memory q = .word T ∧ u.memory (q + 8) = .word C ∧ u.memory (q + 16) = .word 0 ∧
        RC u q C ∧ (rd u.memory C ≠ 3 → p'.hp ≤ (rd u.memory (q + 24)).toNat ∧
          (rd u.memory (q + 24)).toNat < p''.hp)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (hbeg.and (funSpec_be _)) fun s _ ⟨hl, hg, hbe, hm⟩ vs hvs callee v st'
      ⟨hR, hbe'⟩ _ => ⟨rfl, hl, ?_⟩
    rw [evs_cons (by rw [ev_lv, hl]; exact hcf) (evs_cons (by rw [ev_lv, hl]; exact hC2) evs_nil)]
      at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hps : ptrsOf s = some p' := by rw [ptrsOf_frame hg]; exact hp'
    have hgs : ∀ g, g ≠ gScratch → s.globals.lookup g = t1.globals.lookup g := fun g hg' => by
      rw [hg]; exact hgA g hg'
    have hk1s : gword s gKst = gword t1 gKst := gword_glob (hgs _ (by decide))
    have hk2s : gword s gKpad = gword t1 gKpad := gword_glob (hgs _ (by decide))
    -- the trie facts before the call
    have hw3 : ∀ x, s.memory x ≠ t1.memory x → SafeW t1 Nd p.hp p.sp S0 x := fun x hx => by
      rw [hm] at hx
      obtain ⟨a1, a2⟩ := hM3 x hx
      exact Or.inr (Or.inr (Or.inr (Or.inl ⟨by omega, by omega⟩)))
    obtain ⟨hSS3, -, -⟩ := safe_keeps htr h0 hhp hspE (by omega) hw3
    have htr3 : TrieOK s Nd HP0 := trieOK_frame (by omega) htr hSS3 hk1s hk2s
    obtain ⟨n1, n2, n3, -⟩ := htr.1 C hNdC
    have hCh : C.toNat < heapEnd := by have := nsz_ge (rd t1.memory C); omega
    have hkC3 : rd s.memory C = rd t1.memory C := by
      rw [hm]; simp only [M3, rd_upd]
      rw [if_neg (by rintro rfl; omega), if_neg (by rintro rfl; omega), if_neg (by rintro rfl; omega)]
    have hrk : RecKind (rd s.memory C) := by
      rw [hkC3]
      have : (rd t1.memory C).toNat ≠ 0 := fun h => hkC (BitVec.eq_of_toNat_eq h)
      unfold RecKind
      rcases (show (rd t1.memory C).toNat = 1 ∨ (rd t1.memory C).toNat = 2 ∨
        (rd t1.memory C).toNat = 3 by omega) with h | h | h
      · left; exact BitVec.eq_of_toNat_eq h
      · right; left; exact BitVec.eq_of_toNat_eq h
      · right; right; exact BitVec.eq_of_toNat_eq h
    obtain ⟨⟨p'', hp'', hord'', hhp'', hsp'', hk1, hk2⟩, hfoot, hrc, hcb⟩ :=
      hR v rfl q C p' rfl hps hord' (by omega) (by omega)
        ⟨Nd, trieOK_mono (by omega) htr3, hNdC, hrk⟩
    set u : PanSemStateFiniteExact 64 σ := { st' with locals := s.locals }
    have hallq : ∀ k : Nat, k < 48 → p'.sp ≤ (q + BitVec.ofNat 64 k).toNat ∧
        (q + BitVec.ofNat 64 k).toNat < scratchEnd := fun k hk => by
      rw [toNat_add_k (by omega)]; exact ⟨by omega, by omega⟩
    have hkeep : ∀ k : Nat, k < 24 → u.memory (q + BitVec.ofNat 64 k) = s.memory (q + BitVec.ofNat 64 k) :=
      fun k hk => by
        by_contra hne
        have hq' := toNat_add_k (a := q) (k := k) (by omega)
        rcases hfoot _ hne with e | e | e | e
        · have := congrArg BitVec.toNat e
          rw [hq', show q + 24 = q + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)] at this
          omega
        · have := congrArg BitVec.toNat e
          rw [hq', show q + 32 = q + BitVec.ofNat 64 32 from rfl, toNat_add_k (by omega)] at this
          omega
        · have := congrArg BitVec.toNat e
          rw [hq', show q + 40 = q + BitVec.ofNat 64 40 from rfl, toNat_add_k (by omega)] at this
          omega
        · exact e.2 (hallq k (by omega))
    have hm3q : ∀ k : Nat, k = 0 ∨ k = 8 ∨ k = 16 → s.memory (q + BitVec.ofNat 64 k) =
        M3 (q + BitVec.ofNat 64 k) := fun k _ => by rw [hm]
    refine ⟨p'', hp'', hord'', hhp'', hsp'', hk1.trans hk1s, hk2.trans hk2s, hbe'.trans (hbe.trans
      hbeA), ?_, ?_, ?_, ?_, rc_of_eq rfl rfl hrc, ?_⟩
    · intro x hx
      by_cases h3 : u.memory x = s.memory x
      · exact hw3 x (by rw [← h3]; exact hx)
      · rcases hfoot x h3 with e | e | e | e
        · subst e
          refine Or.inr (Or.inr (Or.inr (Or.inl ⟨?_, ?_⟩))) <;>
            rw [show q + 24 = q + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)] <;> omega
        · subst e
          refine Or.inr (Or.inr (Or.inr (Or.inl ⟨?_, ?_⟩))) <;>
            rw [show q + 32 = q + BitVec.ofNat 64 32 from rfl, toNat_add_k (by omega)] <;> omega
        · subst e
          refine Or.inr (Or.inr (Or.inr (Or.inl ⟨?_, ?_⟩))) <;>
            rw [show q + 40 = q + BitVec.ofNat 64 40 from rfl, toNat_add_k (by omega)] <;> omega
        · exact safeW_mono hmono.1 hk1s hk2s
            (safe_of_unalloc (s := s) hord' hmono.2.2 hS0 e)
    · have := hkeep 0 (by decide)
      simp only [BitVec.add_zero] at this
      rw [this, show q = q + BitVec.ofNat 64 0 by simp, hm3q 0 (Or.inl rfl)]
      simp [M3, upd]
    · rw [show q + 8 = q + BitVec.ofNat 64 8 from rfl, hkeep 8 (by decide), hm3q 8 (by omega)]
      simp [M3, upd]
    · rw [show q + 16 = q + BitVec.ofNat 64 16 from rfl, hkeep 16 (by decide), hm3q 16 (by omega)]
      simp [M3, upd]
    · intro hk3
      have hk3' : rd st'.memory C ≠ 3 := hk3
      obtain ⟨p3, hp3, c1, c2⟩ := hcb hk3'
      rw [hp''] at hp3; cases hp3
      exact ⟨c1, c2⟩
  -- `top = cf`
  refine hoare_assign fun u _ ⟨_, hlu, p'', hp'', hord'', hhp'', hsp'', hk1, hk2, hbeu, hw, hq0',
    hq8', hq16', hrc, hcb⟩ v hv _ => ⟨rfl, ?_⟩
  rw [ev_lv, hlu, hcf] at hv
  cases hv
  set u2 := setVarHOLFinite (nm "top") (.val (.word q)) u
  have hp2 : ptrsOf u2 = some p'' := hp''
  obtain ⟨hSS, hrec, hheap⟩ := safe_keeps htr h0 hhp hspE (by omega) hw
  have hm2 : u2.memory = u.memory := rfl
  have hbe2 : u2.be = t1.be := hbeu
  have htr2 : TrieOK u2 Nd HP0 := trieOK_frame (by omega) htr hSS hk1 hk2
  have hrd : rd u.memory (rd u.memory (q + 8)) = rd t1.memory C := by
    rw [show rd u.memory (q + 8) = C by unfold rd; rw [hq8']]
    obtain ⟨n1, n2, -⟩ := htr.1 C hNdC
    have := nsz_ge (rd t1.memory C)
    exact rd_eq (hSS C hNdC C (structCell_base (by omega)))
  have hold : ChainF u2 Nd HP0 p''.hp S0 (d + 1) (q.toNat + 48) true T := by
    have hT1 : rd t1.memory (rd t1.memory (T + 8)) ≠ 1 := by rw [hT8]; exact hkN
    refine chainF_mono_lo hq48 (chainF_frame (s := t1) (t := u2) (by omega) hbe2
      (le_trans hmono.1 hhp'') hSS hheap htr.1 (by omega) (d + 1) p.sp T hrec
      (chainF_true_of hch hT1))
  have h8 : rd u2.memory (q + 8) = C := by
    show rd u.memory (q + 8) = C
    unfold rd; rw [hq8']
  have hhE : 0 < heapEnd := by unfold heapEnd; decide
  have hq0n : q ≠ 0 := by intro e; subst e; simp at hl1; omega
  have hnew : ChainF u2 Nd HP0 p''.hp S0 (d + 2) p''.sp false q := by
    refine ⟨hq0n, by omega, by omega, ⟨?_, ?_, nofun, ?_, ?_, ?_⟩, ?_⟩
    · rw [h8]; exact hNdC
    · rw [h8, hm2]
      obtain ⟨n1, n2, n3, -⟩ := htr.1 C hNdC
      have := nsz_ge (rd t1.memory C)
      have e := rd_eq (hSS C hNdC C (structCell_base (by omega)))
      rw [e]
      have : (rd t1.memory C).toNat ≠ 0 := fun h => hkC (BitVec.eq_of_toNat_eq h)
      unfold RecKind
      rcases (show (rd t1.memory C).toNat = 1 ∨ (rd t1.memory C).toNat = 2 ∨
        (rd t1.memory C).toNat = 3 by omega) with h | h | h
      · left; exact BitVec.eq_of_toNat_eq h
      · right; left; exact BitVec.eq_of_toNat_eq h
      · right; right; exact BitVec.eq_of_toNat_eq h
    · show (rd u.memory (q + 16)).toNat ≤ 16
      unfold rd; rw [hq16']; simp
    · rw [h8]; exact rc_of_eq rfl rfl hrc
    · rw [h8]
      intro hk3
      obtain ⟨c1, c2⟩ := hcb hk3
      unfold cbCell
      exact ⟨le_trans (le_trans h0 hmono.1) (align_ge hord'.2.2.2.2.2.1 c1),
        lt_of_le_of_lt (align_le _) c2⟩
    · show ChainF u2 Nd HP0 p''.hp S0 (d + 1) (q.toNat + 48) true (rd u.memory q)
      rw [show rd u.memory q = T by unfold rd; rw [hq0']]
      exact hold
  refine ⟨⟨p'', hp2, hord'', by omega, hb0, by omega, hS0, htr2, q, d + 2, lk_set_self _ _ _,
    hnew⟩, ?_⟩
  rw [fMu_of hp2 (lk_set_self _ _ _) hS0 hnew, hsp'']
  omega

end InitECandidate.Solver.Spec.Mpt
