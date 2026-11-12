import InitECandidate.Solver.Spec.Mpt.DelStep

/-!
# One iteration of the delete descent keeps `DInv`: the record pushes
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}
variable {be0 : Bool}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch)

/-- `DF` after a push of a sane record at `q`. -/
theorem df_push {S0 : Nat} {K KL : BitVec 64} {s t : PanSemStateFiniteExact 64 σ} {p p' : Ptrs}
    {q T N κ x : BitVec 64} (hdf : DF S0 K KL s) (hps : ptrsOf s = some p)
    (hT : s.locals.lookup (nm "top") = some (.val (.word T)))
    (hp' : ptrsOf t = some p') (hord' : p'.Ordered) (hmono : p'.sp ≤ p.sp)
    (hlive : p'.sp ≤ q.toNat) (hq40 : q.toNat + 40 ≤ p.sp)
    (hmout : ∀ b : BitVec 64, (b.toNat < q.toNat ∨ q.toNat + 40 ≤ b.toNat) → t.memory b = s.memory b)
    (hc0 : rd t.memory q = T) (hc8 : rd t.memory (q + 8) = N) (hc16 : rd t.memory (q + 16) = κ)
    (hc32 : rd t.memory (q + 32) = x)
    (hrec : (κ = 2 → N.toNat + 56 ≤ heapEnd) ∧ (κ ≠ 2 → N.toNat + 176 ≤ heapEnd ∧ x.toNat < 16))
    (htop : t.locals.lookup (nm "top") = some (.val (.word q)))
    (hl : ∀ y, y = nm "res" ∨ y = nm "key" ∨ y = nm "klen" → t.locals.lookup y = s.locals.lookup y) :
    DF S0 K KL t := by
  obtain ⟨⟨p0, hp0, hord0, hsp0, T0, hT0, hch⟩, hS0, ⟨R, hR⟩, hk, hkl⟩ := hdf
  rw [hps] at hp0; cases hp0
  rw [hT] at hT0
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hT0
  subst hT0
  have hS0' : S0 ≤ 2 ^ 64 := by simp only [scratchEnd] at hS0; omega
  have hch' : ChainOK t.memory p.sp S0 T :=
    chainOK_frame hS0' _ _ _ rfl (fun b hb _ => hmout b (Or.inr (by omega))) hch
  refine ⟨⟨p', hp', hord', by omega, q, htop, chainOK_cons hlive (by omega) ?_ ?_⟩, hS0,
    ⟨R, by rw [hl _ (Or.inl rfl)]; exact hR⟩, by rw [hl _ (Or.inr (Or.inl rfl))]; exact hk,
    by rw [hl _ (Or.inr (Or.inr rfl))]; exact hkl⟩
  · refine ⟨fun h2 => ?_, fun h2 => ?_⟩
    · rw [hc8]; exact hrec.1 (by rw [← hc16]; exact h2)
    · rw [hc8, hc32]; exact hrec.2 (by rw [← hc16]; exact h2)
  · rw [hc0]; exact chainOK_mono hq40 hch'

/-- The allocation of a 40-byte record from `AllocSpec`. -/
theorem alloc40 {s st : PanSemStateFiniteExact 64 σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {vs : List (ValueHOL 64)} {v : ValueHOL 64} {p : Ptrs}
    (hsa : (fun vs s r t => Good (some r) → ∀ n p, vs = [.val (.word n)] → ptrsOf s = some p →
      p.Ordered → t.memory = s.memory ∧ (∀ g, g ≠ MemSafe.Region.scratch.global →
        t.globals.lookup g = s.globals.lookup g) ∧ ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧
        p.Mono p' ∧ ∀ v, r = .returned v → ∃ q : BitVec 64, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          MemSafe.Region.scratch.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a →
            a < q.toNat + n.toNat → ¬ p.Allocated a :
      List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
        PanSemStateFiniteExact 64 σ → Prop) vs (callEntryStateHOLFinite s callee) (.returned v) st)
    (hvs : evs s [cw 40] = some vs) (hp : ptrsOf s = some p) (hord : p.Ordered) :
    st.memory = s.memory ∧ ∃ p' : Ptrs, ptrsOf st = some p' ∧ p'.Ordered ∧ p'.sp ≤ p.sp ∧
      ∃ q : BitVec 64, v = .val (.word q) ∧ p'.sp ≤ q.toNat ∧ q.toNat + 40 ≤ p.sp := by
  rw [evs_cons (ev_cw _ 40) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hm, -, p', hp', hord', hmono, hq⟩ := hsa (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  refine ⟨hm, p', hp', hord', hmono.2.2, q, rfl, hl1, ?_⟩
  by_contra hlt
  have := hfree (q.toNat + 39) (by omega) (by omega)
  apply this
  right; right
  constructor <;> omega


/-- A store into the record at `q`, from a state with fixed locals and globals. -/
theorem st_step {t0 : PanSemStateFiniteExact 64 σ} {Mi : MemSafe.Mem} {fr : MlS} {k : Nat}
    {e : ExpHOL 64} {q V : BitVec 64} (hq : t0.locals.lookup fr = some (.val (.word q)))
    (hv : ∀ t : PanSemStateFiniteExact 64 σ, t.locals = t0.locals → ev t e = some (.val (.word V))) :
    Hoare σ X (fun t => t.locals = t0.locals ∧ t.globals = t0.globals ∧ t.memory = Mi)
      (.store (.op .add [lv fr, cw k]) e)
      (fun r t => r = none ∧ t.locals = t0.locals ∧ t.globals = t0.globals ∧
        t.memory = upd Mi (q + o64 k) (.word V)) := by
  refine hoare_post (hoare_st_w (fun t h => by rw [h.1]; exact hq) (fun t h => hv t h.1)) ?_
  rintro r t' _ _ ⟨hr, t, ⟨hl, hg, hm⟩, hl', hg', hm'⟩
  exact ⟨hr, hl'.trans hl, hg'.trans hg, by rw [hm', hm]⟩

theorem lv_of {t0 t : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h0 : t0.locals.lookup x = some (.val (.word w))) (h : t.locals = t0.locals) :
    ev t (lv x) = some (.val (.word w)) := by rw [ev_lv, h]; exact h0

theorem lt_q_of {p' : Ptrs} {q b : BitVec 64} (hord : p'.Ordered) (hl : p'.sp ≤ q.toNat)
    (hb : b.toNat < heapEnd) : b.toNat < q.toNat := by
  have := heapEnd_le_sp hord; omega

/-- **The extension record push.** -/
theorem ext_push (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL N T Lv SEG SL : BitVec 64} :
    Hoare σ X (fun s => DF S0 K KL s ∧ s.locals.lookup (nm "top") = some (.val (.word T)) ∧
        NdClosed s.memory Nd ∧ s.locals.lookup (nm "node") = some (.val (.word N)) ∧ Nd N ∧
        rd s.memory N = 2 ∧ s.locals.lookup (nm "level") = some (.val (.word Lv)) ∧
        KeyNib be0 s.memory K KL Lv ∧ s.locals.lookup (nm "seg") = some (.val (.word SEG)) ∧
        s.locals.lookup (nm "sl") = some (.val (.word SL)) ∧ Lv.toNat + SL.toNat ≤ KL.toNat)
      (.decCall (nm "fr") .one (nm "scratch_alloc") [cw 40] delPushE) (KP (DInv be0 Nd S0 K KL)) := by
  refine hoare_decCallS hsa fun s _ ⟨hdf, hT, hcl, hN, hNd, hk2, hLv, hkn, hseg, hsl, hle⟩ vs hvs
    callee v st hR _ _ => ?_
  obtain ⟨p, hp, hord, -⟩ := hdf.1
  obtain ⟨hm, p', hp', hord', hsp', q, rfl, hlive, hq40⟩ := alloc40 hR hvs hp hord
  set t0 := setVarHOLFinite (nm "fr") (.val (.word q)) { st with locals := s.locals } with ht0
  have hq64 : q.toNat + 40 ≤ 2 ^ 64 := by
    have := heapEnd_le_sp hord; obtain ⟨-, -, -, -, h5, -⟩ := hord; simp only [scratchEnd] at h5; omega
  have hl0 : ∀ y, y ≠ nm "fr" → t0.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hfr : t0.locals.lookup (nm "fr") = some (.val (.word q)) := lk_set_self _ _ _
  have hp0 : ptrsOf t0 = some p' := by rw [← hp']; rfl
  have hm0 : t0.memory = s.memory := hm
  have h56 := (hcl N hNd).2.1 hk2
  refine hoare_conseq (P := fun t => t = t0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => kp_dinv_restore (trk_of "fr") _ h)
  unfold delPushE
  -- the five stores
  let M5 := push5 s.memory q T N 2 SEG SL
  refine hoare_pre (P := fun t => t.locals = t0.locals ∧ t.globals = t0.globals ∧
    t.memory = s.memory) ?_ (fun t _ ht => by subst ht; exact ⟨rfl, rfl, hm0⟩)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hT) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hN) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step (V := 2) hfr (fun t _ => ev_cw t 2))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hseg) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hsl) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (P := fun t => t.locals = t0.locals ∧
      t.globals = t0.globals ∧ t.memory = M5) ?_ fun _ _ h => h.2)
  -- the assignments
  have hout : ∀ b : BitVec 64, (b.toNat < q.toNat ∨ q.toNat + 40 ≤ b.toNat) → M5 b = s.memory b :=
    fun b hb => push5_out hq64 hb
  obtain ⟨c0, c8, c16, c32⟩ := push5_cells (M := s.memory) (a0 := T) (a8 := N) (a16 := 2)
    (a24 := SEG) (a32 := SL) hq64
  have hN48 : M5 (N + 48) = .word (rd s.memory (N + 48)) := by
    rw [hout _ (Or.inl (lt_q_of hord' hlive (by rw [BitVec.toNat_add]; simp; omega)))]
    exact mem_word _ _
  refine hoare_seq (R := fun r u => r = none ∧ u.globals = t0.globals ∧ u.memory = M5 ∧
      u.locals = (setVarHOLFinite (nm "top") (.val (.word q)) t0).locals) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_assign_val (fun u h => lv_of hfr h.1) fun u ⟨hl, hg, hmu⟩ =>
      ⟨rfl, hg, hmu, by show (u.locals.update _) = (t0.locals.update _); rw [hl]⟩
  refine hoare_seq (R := fun r u => r = none ∧ u.globals = t0.globals ∧ u.memory = M5 ∧
      u.locals = (setVarHOLFinite (nm "node") (.val (.word (rd s.memory (N + 48))))
        (setVarHOLFinite (nm "top") (.val (.word q)) t0)).locals) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ ⟨_, hg, hmu, hl⟩ w hw _ => ⟨rfl, hg, hmu, ?_⟩
    obtain ⟨wa, hwa, -, rfl⟩ := ev_load_one hw
    have hn' : u.locals.lookup (nm "node") = some (.val (.word N)) := by
      rw [hl, lk_set_ne _ _ (by decide), hl0 _ (by decide)]; exact hN
    rw [ev_add_cw hn' 48] at hwa
    cases hwa
    show u.locals.update _ = _
    rw [show u.memory (N + BitVec.ofNat 64 48) = .word (rd s.memory (N + 48)) by rw [hmu]; exact hN48, hl]
    rfl
  refine hoare_seq (R := fun r u => r = none ∧ u.globals = t0.globals ∧ u.memory = M5 ∧
      u.locals = (setVarHOLFinite (nm "level") (.val (.word (Lv + SL)))
        (setVarHOLFinite (nm "node") (.val (.word (rd s.memory (N + 48))))
        (setVarHOLFinite (nm "top") (.val (.word q)) t0))).locals) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (Lv + SL))) (fun u ⟨_, _, _, hl⟩ => ?_)
      fun u ⟨_, hg, hmu, hl⟩ => ⟨rfl, hg, hmu, by show (u.locals.update _) = _; rw [hl]; rfl⟩
    refine ev_add2 (ev_lw ?_) (ev_lw ?_)
    · rw [hl, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl0 _ (by decide)]; exact hLv
    · rw [hl, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl0 _ (by decide)]; exact hsl
  refine hoare_assign_val (v := .val (.word (BitVec.ofNat 64 1))) (fun u _ => ev_cw u 1)
    fun u ⟨_, hg, hmu, hl⟩ => Or.inl ⟨rfl, ?_⟩
  set uf := setVarHOLFinite (nm "go") (.val (.word (BitVec.ofNat 64 1))) u
  have hlu : ∀ y, y ≠ nm "go" → y ≠ nm "level" → y ≠ nm "node" → y ≠ nm "top" → y ≠ nm "fr" →
      uf.locals.lookup y = s.locals.lookup y := by
    intro y h1 h2 h3 h4 h5
    show (setVarHOLFinite _ _ u).locals.lookup y = _
    rw [lk_set_ne _ _ (Ne.symm h1), hl, lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3),
      lk_set_ne _ _ (Ne.symm h4), hl0 _ h5]
  have hmuf : uf.memory = M5 := hmu
  have hpuf : ptrsOf uf = some p' := by rw [← hp0]; exact ptrsOf_frame hg
  have hZ : HeapZ s.memory uf.memory := heapZ_high fun b hb => by
    rw [hmuf]; exact hout b (Or.inl (lt_q_of hord' hlive hb))
  have hLvSL : (Lv + SL).toNat = Lv.toNat + SL.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by have := KL.isLt; omega)
  refine ⟨df_push hdf hp (hT) hpuf hord' hsp' hlive hq40 (fun b hb => by rw [hmuf]; exact hout b hb)
    (by rw [hmuf]; rw [show q + o64 0 = q by simp [o64]] at c0; try exact c0)
    (by rw [hmuf]; try exact c8) (by rw [hmuf]; try exact c16) (by rw [hmuf]; try exact c32) ⟨fun _ => h56.1, fun h => absurd rfl h⟩ ?_ ?_, ⟨1, lk_set_self _ _ _⟩,
    fun _ => ⟨ndClosed_heapZ hZ hcl, ⟨rd s.memory (N + 48), ?_, h56.2⟩, Lv + SL, ?_, ?_⟩⟩
  · show (setVarHOLFinite _ _ u).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide), hl, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  · intro y hy
    rcases hy with rfl | rfl | rfl <;> exact hlu _ (by decide) (by decide) (by decide) (by decide)
      (by decide)
  · show (setVarHOLFinite _ _ u).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide), hl, lk_set_ne _ _ (by decide), lk_set_self]
  · show (setVarHOLFinite _ _ u).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide), hl, lk_set_self]
  · exact keyNib_mono (keyNib_heapZ hZ hkn) (by omega) (by omega)

/-- **The branch record push.** -/
theorem br_push (hsa : MemSafe.AllocSpec σ X (nm "scratch_alloc") .scratch)
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL N T Lv I : BitVec 64} :
    Hoare σ X (fun s => DF S0 K KL s ∧ s.locals.lookup (nm "top") = some (.val (.word T)) ∧
        NdClosed s.memory Nd ∧ s.locals.lookup (nm "node") = some (.val (.word N)) ∧ Nd N ∧
        rd s.memory N ≠ 0 ∧ rd s.memory N ≠ 1 ∧ rd s.memory N ≠ 2 ∧
        s.locals.lookup (nm "level") = some (.val (.word Lv)) ∧
        KeyNib be0 s.memory K KL Lv ∧ Lv.toNat < KL.toNat ∧
        s.locals.lookup (nm "idx") = some (.val (.word I)) ∧ I.toNat < 16)
      (.decCall (nm "fr2") .one (nm "scratch_alloc") [cw 40] delPushB) (KP (DInv be0 Nd S0 K KL)) := by
  refine hoare_decCallS hsa fun s _ ⟨hdf, hT, hcl, hN, hNd, hk0, hk1, hk2, hLv, hkn, hlt, hidx, hI⟩
    vs hvs callee v st hR _ _ => ?_
  obtain ⟨p, hp, hord, -⟩ := hdf.1
  obtain ⟨hm, p', hp', hord', hsp', q, rfl, hlive, hq40⟩ := alloc40 hR hvs hp hord
  set t0 := setVarHOLFinite (nm "fr2") (.val (.word q)) { st with locals := s.locals } with ht0
  have hq64 : q.toNat + 40 ≤ 2 ^ 64 := by
    have := heapEnd_le_sp hord; obtain ⟨-, -, -, -, h5, -⟩ := hord; simp only [scratchEnd] at h5; omega
  have hl0 : ∀ y, y ≠ nm "fr2" → t0.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hfr : t0.locals.lookup (nm "fr2") = some (.val (.word q)) := lk_set_self _ _ _
  have hp0 : ptrsOf t0 = some p' := by rw [← hp']; rfl
  have hm0 : t0.memory = s.memory := hm
  obtain ⟨h176, hch⟩ := (hcl N hNd).2.2 hk0 hk1 hk2
  refine hoare_conseq (P := fun t => t = t0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => kp_dinv_restore (trk_of "fr2") _ h)
  unfold delPushB
  let M4 := push4 s.memory q T N 3 I
  refine hoare_pre (P := fun t => t.locals = t0.locals ∧ t.globals = t0.globals ∧
    t.memory = s.memory) ?_ (fun t _ ht => by subst ht; exact ⟨rfl, rfl, hm0⟩)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hT) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hN) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step (V := 3) hfr (fun t _ => ev_cw t 3))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre ?_ fun _ _ h => h.2)
  refine hoare_seq (st_step hfr (fun t h => lv_of (by rw [hl0 _ (by decide)]; exact hidx) h))
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (P := fun t => t.locals = t0.locals ∧
      t.globals = t0.globals ∧ t.memory = M4) ?_ fun _ _ h => h.2)
  have hout : ∀ b : BitVec 64, (b.toNat < q.toNat ∨ q.toNat + 40 ≤ b.toNat) → M4 b = s.memory b :=
    fun b hb => push4_out hq64 hb
  obtain ⟨c0, c8, c16, c32⟩ := push4_cells (M := s.memory) (a0 := T) (a8 := N) (a16 := 3)
    (a32 := I) hq64
  -- the child address
  have hNlt := N.isLt
  let A : BitVec 64 := N + (BitVec.ofNat 64 32 + I * BitVec.ofNat 64 8)
  have hA : A = N + BitVec.ofNat 64 (32 + 8 * I.toNat) := by
    apply BitVec.eq_of_toNat_eq
    simp only [A, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
    have : (I.toNat * 8) % 2 ^ 64 = I.toNat * 8 := Nat.mod_eq_of_lt (by omega)
    rw [this]
    have : (32 + I.toNat * 8) % 2 ^ 64 = 32 + 8 * I.toNat := by
      rw [Nat.mod_eq_of_lt (by omega)]; ring
    rw [this, Nat.mod_eq_of_lt (a := 32 + 8 * I.toNat) (by omega)]
  have hAlt : A.toNat < heapEnd := by
    rw [hA, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32 + 8 * I.toNat) (by omega),
      Nat.mod_eq_of_lt (by have := heapEnd_lt; omega)]
    omega
  have hNA : M4 A = .word (rd s.memory A) := by
    rw [hout _ (Or.inl (lt_q_of hord' hlive hAlt))]; exact mem_word _ _
  refine hoare_seq (R := fun r u => r = none ∧ u.globals = t0.globals ∧ u.memory = M4 ∧
      u.locals = (setVarHOLFinite (nm "top") (.val (.word q)) t0).locals) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_assign_val (fun u h => lv_of hfr h.1) fun u ⟨hl, hg, hmu⟩ =>
      ⟨rfl, hg, hmu, by show (u.locals.update _) = (t0.locals.update _); rw [hl]⟩
  refine hoare_seq (R := fun r u => r = none ∧ u.globals = t0.globals ∧ u.memory = M4 ∧
      u.locals = (setVarHOLFinite (nm "node") (.val (.word (rd s.memory A)))
        (setVarHOLFinite (nm "top") (.val (.word q)) t0)).locals) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u _ ⟨_, hg, hmu, hl⟩ w hw _ => ⟨rfl, hg, hmu, ?_⟩
    obtain ⟨wa, hwa, -, rfl⟩ := ev_load_one hw
    have hn' : u.locals.lookup (nm "node") = some (.val (.word N)) := by
      rw [hl, lk_set_ne _ _ (by decide), hl0 _ (by decide)]; exact hN
    have hi' : u.locals.lookup (nm "idx") = some (.val (.word I)) := by
      rw [hl, lk_set_ne _ _ (by decide), hl0 _ (by decide)]; exact hidx
    rw [show ev u (.op .add [lv (nm "node"), cw 32, .panop .mul [lv (nm "idx"), cw 8]]) =
        some (.val (.word A)) from
      ev_add3 (ev_lw hn') (ev_cw _ 32) (ev_mul2 (ev_lw hi') (ev_cw _ 8))] at hwa
    cases hwa
    show u.locals.update _ = _
    rw [show u.memory A = .word (rd s.memory A) by rw [hmu]; exact hNA, hl]
    rfl
  refine hoare_seq (R := fun r u => r = none ∧ u.globals = t0.globals ∧ u.memory = M4 ∧
      u.locals = (setVarHOLFinite (nm "level") (.val (.word (Lv + 1)))
        (setVarHOLFinite (nm "node") (.val (.word (rd s.memory A)))
        (setVarHOLFinite (nm "top") (.val (.word q)) t0))).locals) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign_val (v := .val (.word (Lv + 1))) (fun u ⟨_, _, _, hl⟩ => ?_)
      fun u ⟨_, hg, hmu, hl⟩ => ⟨rfl, hg, hmu, by show (u.locals.update _) = _; rw [hl]; rfl⟩
    refine ev_add2 (ev_lw ?_) (ev_cw _ 1)
    rw [hl, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hl0 _ (by decide)]; exact hLv
  refine hoare_assign_val (v := .val (.word (BitVec.ofNat 64 1))) (fun u _ => ev_cw u 1)
    fun u ⟨_, hg, hmu, hl⟩ => Or.inl ⟨rfl, ?_⟩
  set uf := setVarHOLFinite (nm "go") (.val (.word (BitVec.ofNat 64 1))) u
  have hlu : ∀ y, y ≠ nm "go" → y ≠ nm "level" → y ≠ nm "node" → y ≠ nm "top" → y ≠ nm "fr2" →
      uf.locals.lookup y = s.locals.lookup y := by
    intro y h1 h2 h3 h4 h5
    show (setVarHOLFinite _ _ u).locals.lookup y = _
    rw [lk_set_ne _ _ (Ne.symm h1), hl, lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3),
      lk_set_ne _ _ (Ne.symm h4), hl0 _ h5]
  have hmuf : uf.memory = M4 := hmu
  have hpuf : ptrsOf uf = some p' := by rw [← hp0]; exact ptrsOf_frame hg
  have hZ : HeapZ s.memory uf.memory := heapZ_high fun b hb => by
    rw [hmuf]; exact hout b (Or.inl (lt_q_of hord' hlive hb))
  have hLv1 : (Lv + 1).toNat = Lv.toNat + 1 := by
    rw [BitVec.toNat_add, show (1 : BitVec 64).toNat = 1 from rfl]
    exact Nat.mod_eq_of_lt (by have := KL.isLt; omega)
  have h3 : (3 : BitVec 64) ≠ 2 := by decide
  refine ⟨df_push hdf hp (hT) hpuf hord' hsp' hlive hq40 (fun b hb => by rw [hmuf]; exact hout b hb)
    (by rw [hmuf]; rw [show q + o64 0 = q by simp [o64]] at c0; try exact c0)
    (by rw [hmuf]; try exact c8) (by rw [hmuf]; try exact c16) (by rw [hmuf]; try exact c32)
    ⟨fun h => absurd h h3, fun _ => ⟨h176, hI⟩⟩ ?_ ?_, ⟨1, lk_set_self _ _ _⟩,
    fun _ => ⟨ndClosed_heapZ hZ hcl, ⟨rd s.memory A, ?_, by rw [hA]; exact hch I.toNat hI⟩,
      Lv + 1, ?_, ?_⟩⟩
  · show (setVarHOLFinite _ _ u).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide), hl, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  · intro y hy
    rcases hy with rfl | rfl | rfl <;> exact hlu _ (by decide) (by decide) (by decide) (by decide)
      (by decide)
  · show (setVarHOLFinite _ _ u).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide), hl, lk_set_ne _ _ (by decide), lk_set_self]
  · show (setVarHOLFinite _ _ u).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide), hl, lk_set_self]
  · exact keyNib_mono (keyNib_heapZ hZ hkn) (by omega) (by omega)

end InitECandidate.Solver.Spec.Mpt
