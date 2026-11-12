import InitECandidate.Solver.MemSafe.CallSound3

/-!
# One-cell stores, globals, primitives, handlers (M1)

* `storeB_post` / `store32_post`: a byte or 32-bit store changes the aligned cell of its
  address only; `cellOK` puts that cell in a `scalar` slot of a typed object or in a live
  temporary (`cell_heap`).
* `gasg_heap`, `asgG_post`: a global assignment accepted by `gAsgOK` (not an allocator or
  protected global; a typed global gets a fitting word) keeps the heap part.
* `prim_post`: `x := prim(args)` changes only the local `x`.
* `callG_post` (`g = f(args);`), `callH_post` (calls with an exception handler, which runs
  from the caller's environment with the handler variable unknown).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## One-cell stores -/

theorem alignC_toNat (a : BitVec 64) : (panByteAlignHOL a).toNat = a.toNat / 8 * 8 := by
  unfold panByteAlignHOL
  have : (2 : Nat) ^ Nat.log2 (64 / 8) = 8 := by decide
  simp only [this, BitVec.toNat_ofNat]
  apply Nat.mod_eq_of_lt
  have := a.isLt
  omega

theorem storeByte_cell {m mem : Mem} {dom : BitVec 64 → Prop} {inst : DecidablePred dom}
    {be : Bool} {w : BitVec 64} {b : BitVec 8}
    (h : @panMemStoreByteWord8HOL 64 _ m dom inst be w b = some mem) :
    dom (panByteAlignHOL w) ∧ ModifiesOnly (fun c => c = panByteAlignHOL w) m mem := by
  unfold panMemStoreByteWord8HOL at h
  dsimp only at h
  split at h
  · rename_i hd
    cases h
    exact ⟨hd, fun c hc => by simp only [if_neg hc]⟩
  · cases h

theorem store32_cell {m mem : Mem} {dom : BitVec 64 → Prop} {inst : DecidablePred dom}
    {be : Bool} {w : BitVec 64} {b : BitVec 32}
    (h : @panMemStore32HOL 64 _ m dom inst be w b = some mem) :
    dom (panByteAlignHOL w) ∧ ModifiesOnly (fun c => c = panByteAlignHOL w) m mem := by
  unfold panMemStore32HOL at h
  split at h
  · dsimp only at h
    split at h
    · rename_i hd
      cases h
      exact ⟨hd, fun c hc => by simp only [if_neg hc]⟩
    · cases h
  · cases h

theorem cellOK_word {E : CEnv} {A : AEnv} {av : AV} (h : cellOK E A av = true) :
    av.isWord = true := by
  cases av <;> simp [cellOK] at h <;> rfl

/-- **A one-cell write accepted by `cellOK`** keeps the heap part. -/
theorem cell_heap {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) {A : AEnv}
    {Γ : Gam} {p : Ptrs} {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s)
    (ht : TempsOK a A Γ p Θ) {av : AV} (hc : cellOK E A av = true) {w : BitVec 64}
    (hw : AVok Γ Θ av w) (hdom : X.memaddrs (panByteAlignHOL w)) {mem : Mem}
    (hmod : ModifiesOnly (fun c => c = panByteAlignHOL w) s.memory mem) :
    Heap a Γ p { s with memory := mem } := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have hpp : p1 = p := by rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  subst hpp
  have hal := alignC_toNat w
  have hse : scratchEnd + 16 < 2 ^ 64 := by decide
  unfold cellOK at hc
  rw [hE] at hc
  split at hc
  · -- a `scalar` slot of a typed object
    rename_i t o
    obtain ⟨ob, hob, hty, rfl⟩ := hw
    simp only [Bool.and_eq_true, beq_iff_eq] at hc
    obtain ⟨hle, hsc⟩ := hc
    have hle' := Nat.le_of_ble_eq_true hle
    have hsz := (hL.1 ob hob).2.2.2.1
    have hlo8 := (hL.1 ob hob).1
    rw [hty] at hsz
    have hslot : ob.HasSlot (o / 8) := by unfold Obj.HasSlot; omega
    obtain ⟨hc1, hc2⟩ := cell_toNat hord hL hob hslot
    have hwn : (ob.base + BitVec.ofNat 64 o).toNat = ob.lo + o := by
      unfold Obj.lo at *
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : o < 2 ^ 64),
        Nat.mod_eq_of_lt (by omega)]
    have hcell : panByteAlignHOL (ob.base + BitVec.ofNat 64 o) = ob.cell (o / 8) := by
      apply BitVec.eq_of_toNat_eq
      rw [alignC_toNat, hwn, hc1]
      unfold Obj.lo at *
      omega
    have hsc' : (a.C.ty ob.ty).slot (o / 8) = .scalar := by rw [hty]; exact hsc
    have hwc : WCell a.C Γ (ob.cell (o / 8)) := ⟨ob, hob, o / 8, hslot, by rw [hsc']; simp, rfl⟩
    refine heap_write ha hh hmod ?_ ?_ ?_
    · intro x hx; rw [hx, hcell]; exact Or.inr hwc
    · intro o' ho' k hk hx
      rw [hcell] at hx
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' hob hk hslot hx
      rw [hsc']; trivial
    · intro x hx; rw [hx, hcell]; exact foot_of_wcell hh ha.hord0 ha.hsz0 hwc
  · -- a live temporary
    rename_i k o
    obtain ⟨q', n', hq', hwe⟩ := hw
    split at hc
    · rename_i td hk
      have hlt : o < td.size := by simpa using hc
      obtain ⟨q, hq, hbuf, hprov⟩ := ht.2 k td hk
      rw [hq] at hq'
      simp only [Option.some.injEq, Prod.mk.injEq] at hq'
      obtain ⟨rfl, rfl⟩ := hq'
      have hbd := bufOK_bound hord hL q.isLt hbuf (by omega)
      have hwn : w.toNat = q.toNat + o := by
        rw [hwe, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : o < 2 ^ 64),
          Nat.mod_eq_of_lt (by omega)]
      have hov : Overlap q.toNat td.size (panByteAlignHOL w) :=
        ⟨by rw [hal]; omega, by rw [hal, hwn]; omega, by rw [hal, hwn]; omega⟩
      refine heap_write ha hh hmod ?_ ?_ ?_
      · intro x hx
        rw [hx]
        rcases hbuf _ hov with ⟨o', ho', k', hk', hsc, he⟩ | ⟨hn, -⟩
        · exact Or.inr ⟨o', ho', k', hk', by rw [hsc]; simp, he⟩
        · exact Or.inl hn
      · intro o' ho' k' hk' hx
        rcases hbuf _ hov with ⟨o'', ho'', k'', hk'', hsc, he'⟩ | ⟨hn, -⟩
        · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho'' hk' hk'' (hx.trans he')
          rw [hsc]; trivial
        · exact absurd (hx ▸ cell_in hord hL ho' hk') hn
      · intro x hx
        rw [hx]
        split at hprov
        · exact Or.inr (Or.inr (Or.inl (hprov.2 _ hov)))
        · exact Or.inr (Or.inl (hprov _ hov))
        · exact absurd hov (win_no_overlap hprov)
    · cases hc
  · cases hc

theorem storeB_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) {A : AEnv}
    {ea ee : ExpHOL 64} (hc : cellOK E A (aev E.C A chkFuel ea) = true) (rt : List RT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.storeByte ea ee) (SPost a rt (.normal A) Γ Θ) := by
  apply hoareG_storeByte
  intro s hs ⟨p, hh, ht, hl⟩ w x mem hw _ hmem
  obtain ⟨hd, hmod⟩ := storeByte_cell hmem
  have haok := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel ea _ hw
  rw [← hE] at haok
  obtain ⟨w', hw', hav⟩ := vok_word (cellOK_word hc) haok
  have hww : w' = w := by simpa using hw'.symm
  rw [hww] at hav
  have hdX : X.memaddrs (panByteAlignHOL w) := by rw [← hs.2.1]; exact hd
  exact ⟨A, Γ, Θ, rfl, later_refl Γ Θ, p, cell_heap ha hE hh ht hc hav hdX hmod, ht, hl⟩

theorem store32_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) {A : AEnv}
    {ea ee : ExpHOL 64} (hc : cellOK E A (aev E.C A chkFuel ea) = true) (rt : List RT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.store32 ea ee) (SPost a rt (.normal A) Γ Θ) := by
  apply hoareG_store32
  intro s hs ⟨p, hh, ht, hl⟩ w x mem hw _ hmem
  obtain ⟨hd, hmod⟩ := store32_cell hmem
  have haok := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel ea _ hw
  rw [← hE] at haok
  obtain ⟨w', hw', hav⟩ := vok_word (cellOK_word hc) haok
  have hww : w' = w := by simpa using hw'.symm
  rw [hww] at hav
  have hdX : X.memaddrs (panByteAlignHOL w) := by rw [← hs.2.1]; exact hd
  exact ⟨A, Γ, Θ, rfl, later_refl Γ Θ, p, cell_heap ha hE hh ht hc hav hdX hmod, ht, hl⟩

/-! ## Global assignments -/

theorem gAsgOK_spec {C : Cfg} {g : MlS} {av : AV} (hok : gAsgOK C g av = true) :
    g ∉ C.PG ∧ g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch ∧
      ∀ k, C.GT.lookup g = some k → av.isWord = true ∧ fitsAV k av = true := by
  unfold gAsgOK allocG at hok
  simp only [Bool.and_eq_true, Bool.not_eq_true'] at hok
  obtain ⟨⟨h1, h2⟩, h3⟩ := hok
  simp at h1 h2
  refine ⟨h2, h1.1, h1.2.1, h1.2.2, fun k hk => ?_⟩
  rw [hk] at h3
  simpa using h3

theorem gasg_heap {a : Act σ} (hH : HooksLawful a.C a.H) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {g : MlS} {av : AV} (hok : gAsgOK a.C g av = true)
    {Θ : List (BitVec 64 × Nat)} {v : ValueHOL 64}
    (hv : ∀ k, a.C.GT.lookup g = some k → VOk Γ Θ av v) :
    Heap a Γ p (setGlobalHOLFinite g v s) := by
  obtain ⟨hpg, h1, h2, h3, hGT⟩ := gAsgOK_spec hok
  have hgl : ∀ g', g' ≠ g → (setGlobalHOLFinite g v s).globals.lookup g' = s.globals.lookup g' :=
    fun g' h => lookup_update_ne _ _ (Ne.symm h)
  have hgw : ∀ g', g' ≠ g → gword (setGlobalHOLFinite g v s) g' = gword s g' := by
    intro g' h; unfold gword; rw [hgl g' h]
  have hpt : ptrsOf (setGlobalHOLFinite g v s) = ptrsOf s := by
    unfold ptrsOf
    rw [hgw gHeap (Ne.symm h1), hgw gFrame (Ne.symm h2), hgw gScratch (Ne.symm h3)]
  have hpgk : ∀ g' ∈ a.C.PG, (setGlobalHOLFinite g v s).globals.lookup g' = s.globals.lookup g' :=
    fun g' hg' => hgl g' (fun he => hpg (he ▸ hg'))
  obtain ⟨⟨p1, hp1, hord, hL, hF, hT, hGl, hW⟩, hps, hmono, hext, hnf, hmod, hpg0, hng⟩ := hh
  refine ⟨⟨p1, hpt ▸ hp1, hord, hL, hF, hT, ?_, ?_⟩, hpt ▸ hps, hmono, hext, hnf, hmod, ?_, hng⟩
  · intro g' k hk
    by_cases hg : g' = g
    · subst hg
      obtain ⟨hw, hf⟩ := hGT k hk
      obtain ⟨x, rfl, hx⟩ := vok_word hw (hv k hk)
      refine ⟨x, ?_, (fits_of_fitsAV hf hx).2⟩
      unfold gword
      rw [show (setGlobalHOLFinite g' (.val (.word x)) s).globals.lookup g' =
        some (.val (.word x)) from lookup_update_self _ _ _]
    · rw [hgw g' hg]; exact hGl g' k hk
  · exact fun o ho => (hH.2 Γ s (setGlobalHOLFinite g v s) o (hW o ho) rfl rfl
      (fun _ _ => rfl) hpgk).1
  · exact fun g' hg' hgw' => (hpgk g' hg').trans (hpg0 g' hg' hgw')

theorem asgG_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) {A : AEnv}
    {g : MlS} {e : ExpHOL 64} (hok : gAsgOK E.C g (aev E.C A chkFuel e) = true) (rt : List RT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.assign .global g e) (SPost a rt (.normal A) Γ Θ) := by
  refine hoareG_assignK fun s hs ⟨p, hh, ht, hl⟩ v hv _ => ?_
  have hav := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel e v hv
  rw [hE] at hok
  exact ⟨A, Γ, Θ, rfl, later_refl Γ Θ, p, gasg_heap ha.hH hh hok (fun _ _ => hav), ht, hl⟩

/-! ## Primitives -/

theorem hoareG_primitive {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {x : MlS} {op : PrimOp}
    {args : List (ExpHOL 64)} (h : ∀ s, InCtx s X → P s → ∀ v, Q none (setVarHOLFinite x v s)) :
    HoareG σ X P (.primitive x op args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_primitive]
  split
  · intro hg; exact absurd hg (by simp [Good])
  · split
    · intro hg; exact absurd hg (by simp [Good])
    · split
      · intro _; exact h s hs hp _
      · intro hg; exact absurd hg (by simp [Good])

theorem prim_post {a : Act σ} (ha : ActOK a X) {A : AEnv} {x : MlS} {op : PrimOp}
    {args : List (ExpHOL 64)} (rt : List RT) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.primitive x op args)
      (SPost a rt (.normal ⟨setL x .unk A.L, A.T⟩) Γ Θ) :=
  hoareG_primitive fun _ _ hs v =>
    ⟨_, Γ, Θ, rfl, later_refl Γ Θ, ig_set ha.hH hs (av := .unk) (v := v) trivial⟩

/-! ## Calls with a global target, calls with a handler -/

theorem shape_word_one (w : BitVec 64) :
    shapeOfHOLExact (ValueHOL.val (HolWordLab.word w) : ValueHOL 64) = .one := by
  simp [shapeOfHOLExact]

theorem glk_of_gword {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    s.globals.lookup g = some (.val (.word w)) := by
  unfold gword at h
  split at h
  · rename_i w' hw; cases h; exact hw
  · cases h

/-- Weakening a post to a joined output. -/
theorem spost_join_left {a : Act σ} {rt : List RT} {o o' : AOut} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : SPost a rt o Γ Θ r t) : SPost a rt (o.join o') Γ Θ r t := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
  all_goals first
    | (obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := h
       obtain ⟨B', Θ'', hj, hp, hig'⟩ := joinO_left (o' := _) hB hig
       exact ⟨B', Γ', Θ'', hj, ⟨hl.1, hl.2.trans hp⟩, hig'⟩)
    | exact h

theorem spost_join_right {a : Act σ} {rt : List RT} {o o' : AOut} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : SPost a rt o' Γ Θ r t) : SPost a rt (o.join o') Γ Θ r t := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
  all_goals first
    | (obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := h
       obtain ⟨B', Θ'', hj, hp, hig'⟩ := joinO_right (o := _) hB hig
       exact ⟨B', Γ', Θ'', hj, ⟨hl.1, hl.2.trans hp⟩, hig'⟩)
    | exact h

/-- A post from later ghosts is a post from earlier ones. -/
theorem spost_later {a : Act σ} {rt : List RT} {o : AOut} {Γ Γ' : Gam}
    {Θ Θ' : List (BitVec 64 × Nat)} (hl : Later Γ Θ Γ' Θ') {r : Option (PanSemResultExact 64)}
    {t : State σ} (h : SPost a rt o Γ' Θ' r t) : SPost a rt o Γ Θ r t := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
  all_goals first
    | (obtain ⟨B, Γ'', Θ'', hB, hl2, hig⟩ := h
       exact ⟨B, Γ'', Θ'', hB, later_trans hl hl2, hig⟩)
    | (obtain ⟨Γ'', p, he, hh, hr⟩ := h
       exact ⟨Γ'', p, ext_trans hl.1 he, hh, hr⟩)
    | (rcases h with hab | ⟨Γ'', p, he, hh⟩
       · exact Or.inl hab
       · exact Or.inr ⟨Γ'', p, ext_trans hl.1 he, hh⟩)
    | exact abn_ext (fun he => ext_trans hl.1 he) h

/-- An abnormal callee result (exception, final FFI event) propagates the heap part. -/
theorem call_abn {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) (hsg : E.sg = a.sg)
    {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ} {p : Ptrs}
    (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ) (hl : LocalsOK A Γ Θ s) (hs : InCtx s X) {f : MlS}
    {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) {vs : List (ValueHOL 64)}
    (hvs : evs s args = some vs) {cs : List Cap} (hcs : capSub cs E.caps = true)
    (hcE : E.caps = a.caps) {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg cs vs (callEntryStateHOLFinite s callee) r st) (habn : Abn r)
    (rt : List RT) (o : AOut) : SPost a rt o Γ Θ (some r) (emptyLocalsHOLFinite st) := by
  have hg : Good (some r) := by
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
  by_cases hab : Abortive r
  · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inl hab
    · exact Or.inl hab
  obtain ⟨Γ', q', hext, hh', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
  have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
  rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
  · exact Or.inr ⟨Γ', q', hext, hH'⟩
  · exact Or.inr ⟨Γ', q', hext, hH'⟩

/-- The normal-return part of `g = f(args)`. -/
theorem gtgt_ret {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) (hsg : E.sg = a.sg)
    {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ} {p : Ptrs}
    (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ) (hl : LocalsOK A Γ Θ s) (hs : InCtx s X) {f g : MlS}
    {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg)
    (hok : gAsgOK E.C g (retAV sg .one) = true) {vs : List (ValueHOL 64)}
    (hvs : evs s args = some vs) {cs : List Cap} (hcs : capSub cs E.caps = true)
    (hcE : E.caps = a.caps) {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {v : ValueHOL 64} {st : State σ}
    (hR : SummR a.Cb a.H sg cs vs (callEntryStateHOLFinite s callee) (.returned v) st)
    (hval : isValidValueHOLExact s.toExact .global g v = true) :
    ∃ Γ', Later Γ Θ Γ' Θ ∧ IG a A Γ' Θ (setGlobalHOLFinite g v { st with locals := s.locals }) := by
  obtain ⟨Γ', q', hext, hh', ht', -, hret⟩ :=
    call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
  have hv : ∀ k, a.C.GT.lookup g = some k → VOk Γ' Θ (retAV sg .one) v := by
    intro k hk
    obtain ⟨p1, -, -, -, -, -, hGl, -⟩ := hh.1
    obtain ⟨w, hw, -⟩ := hGl g k hk
    have hlk := glk_of_gword hw
    have hsh : shapeEqHOL (shapeOfHOLExact v) .one = true := by
      simp only [isValidValueHOLExact, lookupKvarHOLExact] at hval
      rw [hlk] at hval
      dsimp only at hval
      rw [shape_word_one] at hval
      exact hval
    exact retAV_sound hsh (hret v rfl) Θ
  have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH rfl rfl rfl rfl hh'
  rw [hE] at hok
  exact ⟨Γ', ⟨hext, List.prefix_refl _⟩, q', gasg_heap ha.hH hh2 hok hv, ht', locals_ext hext hl⟩

/-- `g = f(args);` -/
theorem callG_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv} {g f : MlS}
    {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg)
    (hok : gAsgOK E.C g (retAV sg .one) = true) (rt : List RT) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call (some (some (.global, g), none)) f args)
      (SPost a rt (.normal A) Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callA hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _ hval
    obtain ⟨Γ', hlat, hig⟩ := gtgt_ret ha hE hsg hh ht hl hs hfs hok hvs hcs hcE hR hval
    exact ⟨A, Γ', Θ, rfl, hlat, hig⟩
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
    exact call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _

/-- A call with an exception handler. -/
theorem callH_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv} {f : MlS}
    {args : List (ExpHOL 64)} {sg : Sig} {tgt : Option (VarKind × MlS)} {eid hv : MlS}
    {hp : ProgHOL 64} (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg)
    {B : AEnv} (htg : hTgt E A (args.map (aev E.C A chkFuel)) sg tgt = some B) {rt : List RT}
    {oh : AOut}
    (hhp : ∀ Γ' Θ', HoareG σ X (IG a ⟨setL hv .unk A.L, A.T⟩ Γ' Θ') hp (SPost a rt oh Γ' Θ'))
    (heid : eid ≠ trapErr) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call (some (tgt, some (eid, hv, hp))) f args)
      (SPost a rt ((AOut.normal B).join oh) Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callH hf ?_ ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _
    refine ⟨fun htn => ?_, fun k x htk hval => ?_⟩
    · subst htn
      simp only [hTgt, Option.some.injEq] at htg
      subst htg
      obtain ⟨Γ', q', hext, hh', ht', -⟩ :=
        call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
      exact spost_join_left
        ⟨A, Γ', Θ, rfl, ⟨hext, List.prefix_refl _⟩, ig_after ha.hH hl hext hh' ht'⟩
    · subst htk
      cases k with
      | «local» =>
          simp only [hTgt, Option.some.injEq] at htg
          subst htg
          obtain ⟨Γ', Θ', hlat, hig⟩ := asg_ret ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hval
          exact spost_join_left ⟨_, Γ', Θ', rfl, hlat, hig⟩
      | global =>
          simp only [hTgt] at htg
          split at htg
          · rename_i hok
            simp only [Option.some.injEq] at htg
            subst htg
            obtain ⟨Γ', hlat, hig⟩ := gtgt_ret ha hE hsg hh ht hl hs hfs hok hvs hcs hcE hR hval
            exact spost_join_left ⟨_, Γ', Θ, rfl, hlat, hig⟩
          · cases htg
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', hext, hh', ht', -⟩ :=
      call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (fun h => heid h)
    have hig := ig_set (x := hv) (av := .unk) (v := v) ha.hH
      (ig_after ha.hH hl hext hh' ht') trivial
    intro t htc heq hg
    subst heq
    exact spost_join_right (spost_later ⟨hext, List.prefix_refl _⟩ (hhp Γ' Θ _ htc hig hg))
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn _
    exact call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _

end InitECandidate.Solver.MemSafe
