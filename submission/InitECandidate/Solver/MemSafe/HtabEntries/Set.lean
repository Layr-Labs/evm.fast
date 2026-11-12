import InitECandidate.Solver.MemSafe.HtabEntries.NoExcHtab
import InitECandidate.Solver.MemSafe.HtabEntries.New
import InitECandidate.Solver.MemSafe.OutDom
import InitECandidate.Solver.Spec.Inv.HtabSet

/-!
# `htab_set` as a capability entry of the summary table (interface rev. 6)

`csumm_htab_set th`: for every header type `th`, the capability summary of
`htab_set(T : ptr th, key : buf (htKL th), val : valPT th)` with the all-cells capabilities
`capsHT th` (the header type and the array types). It covers every good non-abortive result:
`htab_set` has no exceptions but `TrapErr` (`noExc_htabX`), so the returns-only `setSpecK`
suffices (`sumSpecA_of_returns`).

On a return, `Γ' = Γ ++ growL T H0 H1`: when the heap pointer moved from `H0` to `H1`, one new
object `[H0, H1)` of the owner-encoded type `tOwn T` covers everything growth allocated (the
final arrays and the garbage of intermediate growths). The pieces:

* the key: a `buf key_len` argument avoids every table region and the free heap (`buf_out`);
  the region avoids the free heap (`reg_out_free`);
* `G` over `Γ'`: layout, fields, tags and globals from the trivial-hook `G` (`trivH`,
  `Frames.G_addObj`); cells outside the table's region keep their words (`keep_cell`); the
  table's hook from `SetPostK` (`TabOK`: well formed, region in owned objects, values fit, key
  length kept); every other hook by `HooksLawful` (its footprint misses the region:
  `HtabHooks.sep`) and `HooksMono`;
* the footprint: unaligned addresses keep their words (`OutDom.modifiesOnly_aligned`), aligned
  region cells are `prot` cells of owned objects, covered by the all-cells capabilities.
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.AllocImpl
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Signatures and capabilities -/

/-- The capabilities of the table mutators: every cell of the header type, of the scratch
array type and of the owner-encoded array types. -/
def capsHT (th : Nat) : List Cap := [⟨anyG, th, [], true⟩, ⟨anyG, tHTAs, [], true⟩]

/-- The value parameter of a header type. -/
def valPT (th : Nat) : PT := if valK th = .scalar then .any else .fits (valK th)

/-- The signature of `htab_set` on tables of header type `th`. -/
def setSig (th : Nat) : Sig := ⟨[.fits (.ptr th), .buf (htKL th), valPT th], [], [], true⟩

theorem valPT_fits {Γ : Gam} {p : Ptrs} {vs : List (ValueHOL 64)} {th : Nat} {w : BitVec 64}
    (h : ArgOK guestC Γ p vs (valPT th) (.val (.word w))) : Fits Γ (valK th) w := by
  unfold valPT at h
  by_cases hk : valK th = .scalar
  · rw [hk]; trivial
  · rw [if_neg hk] at h
    obtain ⟨w', hw, hf⟩ := h
    simp only [wordOf, Option.some.injEq] at hw
    subst hw; exact hf

theorem setArgs {Γ : Gam} {p : Ptrs} {th : Nat} {T key val : BitVec 64}
    (h : ArgsOK guestC Γ p (setSig th).params [.val (.word T), .val (.word key), .val (.word val)]) :
    (∃ o ∈ Γ, o.base = T ∧ o.ty = th) ∧ BufOK guestC Γ p key.toNat (htKL th) ∧
      Fits Γ (valK th) val := by
  obtain ⟨-, hv⟩ := h
  have h0 := hv 0 _ _ rfl rfl
  have h1 := hv 1 _ _ rfl rfl
  have h2 := hv 2 _ _ rfl rfl
  obtain ⟨w0, e0, f0⟩ := h0
  obtain ⟨w1, e1, f1⟩ := h1
  simp only [wordOf, Option.some.injEq] at e0 e1
  subst e0 e1
  exact ⟨f0, f1, valPT_fits h2⟩

/-! ## Facts about laid-out objects -/

theorem tabTy_untagged {t : Nat} (h : IsTabTy t) : guestC.tags.lookup t = none := by
  rcases h with h | rfl | h
  · exact hdr_untagged t (hkOf_tab h)
  · decide
  · exact own_untagged h

/-- Bytes of laid-out objects are allocated. -/
theorem alloc_of_in {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {a : BitVec 64} (h : InObj Γ a.toNat) : p.Allocated a.toNat :=
  alloc_of_inObj hord hL Helpers.newFresh_same h

theorem alloc_not_free {p : Ptrs} (hord : p.Ordered) {a : Nat} (h1 : p.hp ≤ a) (h2 : a < heapEnd)
    (h : p.Allocated a) : False := by
  unfold Ptrs.Allocated at h
  obtain ⟨-, -, d3, d4, -⟩ := hord
  omega

theorem alloc_lt {p : Ptrs} (hord : p.Ordered) {a : Nat} (h : p.Allocated a) : a < scratchEnd := by
  have : heapEnd ≤ scratchEnd := by decide
  unfold Ptrs.Allocated at h
  obtain ⟨-, d2, -, d4, d5, -⟩ := hord
  omega

/-- The cell of a byte. -/
theorem cell8 (a : BitVec 64) : (BitVec.ofNat 64 (a.toNat / 8 * 8)).toNat = a.toNat / 8 * 8 := by
  have := a.isLt
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]

/-- A scalar cell of a laid-out object is in the object. -/
theorem scell_in {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {a : BitVec 64}
    (h : SCell C Γ a) : InObj Γ a.toNat := by
  obtain ⟨y, hy, k, hk, -, rfl⟩ := h
  exact cell_in hord hL hy hk

/-- **A buffer argument avoids the region of a table of `Γ` and the free heap**, and does not
wrap. -/
theorem buf_out {Γ : Gam} {s : State σ} {p : Ptrs} {o : Obj} (hord : p.Ordered)
    (hL : Layout guestC p Γ) (hw : tabW Γ s o) (hk : hkOf o.ty = .tab) {b n : Nat} (hb64 : b < 2 ^ 64)
    (hb : BufOK guestC Γ p b n) :
    b + n ≤ 2 ^ 64 ∧ ∀ a : BitVec 64, b ≤ a.toNat → a.toNat < b + n →
      ¬ Spec.Inv.TableRegion s.memory o.base a ∧ ¬ (p.hp ≤ a.toNat ∧ a.toNat < heapEnd) := by
  have hse : scratchEnd + 8 < 2 ^ 64 := by decide
  have hcell : ∀ c : BitVec 64, Overlap b n c → p.Allocated c.toNat := fun c hc => by
    rcases hb c hc with h | ⟨-, h⟩
    · exact alloc_of_in hord hL (scell_in hord hL h)
    · exact h
  refine ⟨?_, fun a h1 h2 => ⟨fun hr => ?_, fun ⟨f1, f2⟩ => ?_⟩⟩
  · by_contra hc
    have e : (BitVec.ofNat 64 (2 ^ 64 - 8)).toNat = 2 ^ 64 - 8 := by decide
    have := alloc_lt hord (hcell (BitVec.ofNat 64 (2 ^ 64 - 8)) ⟨by rw [e]; decide, by rw [e]; omega,
      by rw [e]; omega⟩)
    rw [e] at this
    omega
  · obtain ⟨x, hx, -, hxt, x1, x2⟩ := tab_obj hw hk hr
    have hG := hw.2.1
    obtain ⟨x8, -, -⟩ := hG.1 x hx
    have hov : Overlap b n (BitVec.ofNat 64 (a.toNat / 8 * 8)) :=
      ⟨by rw [cell8]; omega, by rw [cell8]; omega, by rw [cell8]; omega⟩
    rcases hb _ hov with ⟨y, hy, k, hk', hsc, hc⟩ | ⟨hn, -⟩
    · obtain ⟨hc1, -⟩ := cell_toNat hord hL hy hk'
      rw [← hc, cell8] at hc1
      unfold Obj.HasSlot at hk'
      have e := gam_eq hG hx hy (n := a.toNat / 8 * 8) (by unfold Obj.lo at *; omega) (by omega)
        (by unfold Obj.lo at *; omega) (by unfold Obj.hi Obj.lo at *; omega)
      subst e
      rw [tabTy_prot hxt k] at hsc
      cases hsc
    · exact hn ⟨x, hx, by rw [cell8]; unfold Obj.lo at *; omega, by rw [cell8]; omega⟩
  · have hp8 := hord.2.2.2.2.2.1
    have hov : Overlap b n (BitVec.ofNat 64 (a.toNat / 8 * 8)) :=
      ⟨by rw [cell8]; omega, by rw [cell8]; omega, by rw [cell8]; omega⟩
    exact alloc_not_free hord (a := a.toNat / 8 * 8) (by omega) (by omega)
      (by have := hcell _ hov; rwa [cell8] at this)

/-- The region of a table of `Γ` avoids the free heap. -/
theorem reg_out_free {Γ : Gam} {s : State σ} {p : Ptrs} {o : Obj} (hord : p.Ordered)
    (hL : Layout guestC p Γ) (hw : tabW Γ s o) (hk : hkOf o.ty = .tab) :
    ∀ a, Spec.Inv.TableRegion s.memory o.base a → ¬ (p.hp ≤ a.toNat ∧ a.toNat < heapEnd) := by
  intro a ha ⟨f1, f2⟩
  obtain ⟨x, hx, -, -, x1, x2⟩ := tab_obj hw hk ha
  exact alloc_not_free hord f1 f2 (alloc_of_in hord hL ⟨x, hx, x1, x2⟩)

/-- A region byte inside an object of `Γ`: the object has a table type. -/
theorem reg_tabTy {Γ : Gam} {s : State σ} {o y : Obj} (hw : tabW Γ s o) (hk : hkOf o.ty = .tab)
    {a : BitVec 64} (ha : Spec.Inv.TableRegion s.memory o.base a) (hy : y ∈ Γ) (h1 : y.lo ≤ a.toNat)
    (h2 : a.toNat < y.hi) : IsTabTy y.ty := by
  obtain ⟨x, hx, -, hxt, x1, x2⟩ := tab_obj hw hk ha
  rw [← gam_eq hw.2.1 hx hy x1 x2 h1 h2]
  exact hxt

/-! ## The trivial hook family (for the layout part of `G`) -/

def trivH : Hooks σ := ⟨fun _ _ _ => True, fun _ _ _ _ => False⟩

theorem trivH_lawful {C : Cfg} : HooksLawful C (trivH (σ := σ)) :=
  ⟨fun _ _ _ _ _ _ h => h.elim, fun _ _ _ _ _ _ _ _ _ => ⟨trivial, rfl⟩⟩

theorem trivH_mono {C : Cfg} : HooksMono C (trivH (σ := σ)) := fun _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial

theorem layout_heap {C : Cfg} {p p' : Ptrs} {Γ : Gam} (hL : Layout C p Γ) (hh : p.hp ≤ p'.hp)
    (hf : p'.fp = p.fp) (hs : p'.sp = p.sp) : Layout C p' Γ := by
  refine ⟨fun o ho => ?_, hL.2⟩
  obtain ⟨a1, a2, a3, a4, a5⟩ := hL.1 o ho
  refine ⟨a1, a2, a3, a4, ?_⟩
  cases hr : (C.ty o.ty).region <;> rw [hr] at a5 <;> simp only [Region.Live] at a5 ⊢ <;> omega

/-! ## The growth object -/

/-- The object covering the heap block `[H0, H1)` that growth allocated (none if no growth). -/
def growL (T H0 H1 : BitVec 64) : Gam :=
  if H0.toNat < H1.toNat then [⟨H0, tOwn T, H1.toNat - H0.toNat⟩] else []

theorem mem_growL {T H0 H1 : BitVec 64} {x : Obj} (h : x ∈ growL T H0 H1) :
    H0.toNat < H1.toNat ∧ x = ⟨H0, tOwn T, H1.toNat - H0.toNat⟩ := by
  unfold growL at h
  split at h
  · simp only [List.mem_singleton] at h; exact ⟨by assumption, h⟩
  · simp at h

theorem growL_mem {T H0 H1 : BitVec 64} (h : H0.toNat < H1.toNat) :
    (⟨H0, tOwn T, H1.toNat - H0.toNat⟩ : Obj) ∈ growL T H0 H1 := by
  unfold growL; rw [if_pos h]; exact List.mem_singleton_self _

/-! ## The entry -/

theorem gword_keep {s t : State σ} {g : MlS} (h : t.globals.lookup g = s.globals.lookup g) :
    gword t g = gword s g := by
  unfold gword; rw [h]

theorem hpN_untyped : guestC.GT.lookup Spec.Inv.hpN = none ∧ Spec.Inv.hpN ∉ guestC.PG :=
  alloc_untyped gHeap (by simp)

theorem ite_le_of {c : Prop} [Decidable c] {a b n : Nat} (ha : a ≤ n) (hb : b ≤ n) :
    (if c then a else b) ≤ n := by
  split
  · exact ha
  · exact hb

/-- One branch at a time: `split_ifs` over all of `htKL`'s branches exceeds the heartbeat limit. -/
theorem htKL_le (t : Nat) : htKL t ≤ 60 := by
  unfold htKL
  repeat (refine ite_le_of (by decide) ?_)
  decide

/-- **The `htab_set` entry** for header type `th` (interface rev. 6). -/
theorem csumm_htab_set {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th : Nat} (hth : th ∈ hdrTys) :
    CSumm σ X guestC H (nm "htab_set") (setSig th) (capsHT th) := by
  have hk : hkOf th = .tab := hkOf_of_tab hth
  have he : Spec.Inv.heapEnd = heapEnd := rfl
  refine sumSpecA_of_returns (noExc_htabX hF.hX _ (by decide)) ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs _
  -- the arguments are three words
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨-, -, A, B, C, rfl, sa, sb, sc, -, -, -⟩ :=
    Spec.Inv.lookupCode_three_full Spec.Inv.code_htab_set (by decide) (by decide) (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨key, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨val, rfl⟩ := val_of_shapeEq_one sc
  obtain ⟨p, hps, hA⟩ := hargs
  obtain ⟨⟨o, ho, hoT, hot⟩, hbuf, hval⟩ := setArgs hA
  subst hoT
  -- `G` at entry
  have hG0 := hG
  obtain ⟨pG, hpG, hord, hL, hFl, hTg, hGl, hW⟩ := hG0
  have hpp : pG = p := Option.some.inj (hpG.symm.trans hps)
  subst hpp
  have hko : hkOf o.ty = .tab := by rw [hot]; exact hk
  have hw : tabW Γ s o := hT.get Γ s o hko (hW o ho)
  obtain ⟨-, hGo, hwf, harr, hvok, hkl⟩ := id hw
  obtain ⟨H0, F0, S0, hH0, hF0, hS0, hpe⟩ := ptrsOf_some hpG
  have hph : pG.hp = H0.toNat := by rw [hpe]
  have hpf : pG.fp = F0.toNat := by rw [hpe]
  have hpS : pG.sp = S0.toNat := by rw [hpe]
  obtain ⟨b1, b2, b3, b4, b5, b6, b7, b8⟩ := hord
  have hord0 : pG.Ordered := ⟨b1, b2, b3, b4, b5, b6, b7, b8⟩
  -- the key and the region avoid each other and the free heap
  obtain ⟨hkw, hkout⟩ := buf_out hord0 hL hw hko key.isLt hbuf
  have hKL : (Spec.Inv.hdr s.memory o.base 0).toNat = htKL th := by
    unfold KLOK at hkl
    rw [hkl, hot, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := htKL_le th; omega)]
  have hpost := Spec.Inv.setSpecK hF.hX _ body callee rs hl s hs hloc r hr o.base key val H0 rfl
    hwf (lookup_of_gword hH0) (by rw [← hph, he]; exact b2) (by rw [← hph]; exact b6)
    (fun a ha => by rw [← hph, he]; exact reg_out_free hord0 hL hw hko a ha)
    (by rw [hKL]; exact hkw)
    (fun a h1 h2 => by rw [hKL] at h2; rw [← hph, he]; exact hkout a h1 h2) v hv
  obtain ⟨⟨hwf', -, hlv, H1, hH1, h01, h1e, h18, hmod, hregt, hgl⟩, hkl'⟩ := hpost
  rw [he] at h1e
  -- the final state
  set t := (evaluateHOLFiniteState s body).2 with htdef
  have hd : t.memaddrs = s.memaddrs := memaddrs_preserved s body
  have hbe : t.be = s.be := Spec.Inv.be_preserved s body
  have hout : ∀ x, ¬ s.memaddrs x → t.memory x = s.memory x := fun x hx => memOut_preserved body s hx
  have hal : ∀ x, s.memaddrs x → x.toNat % 8 = 0 := fun x h => hF.hal x (hs.2.1 ▸ h)
  have hgF : gword t gFrame = gword s gFrame := gword_keep (hgl _ (by decide))
  have hgS : gword t gScratch = gword s gScratch := gword_keep (hgl _ (by decide))
  have hgH : gword t gHeap = some H1 := gword_of_lookup hH1
  set p' : Ptrs := ⟨H1.toNat, F0.toNat, S0.toNat⟩ with hp'
  have hpt : ptrsOf t = some p' := by
    unfold ptrsOf; rw [hgH, hgF, hgS, hF0, hS0]
  have hord' : p'.Ordered := ⟨by show heapBase ≤ H1.toNat; omega, h1e,
    by show heapEnd ≤ F0.toNat; omega, by show F0.toNat ≤ S0.toNat; omega,
    by show S0.toNat ≤ scratchEnd; omega, h18, by show F0.toNat % 8 = 0; omega,
    by show S0.toNat % 8 = 0; omega⟩
  have hmono : pG.Mono p' := ⟨by show pG.hp ≤ H1.toNat; omega, by show pG.fp ≤ F0.toNat; omega,
    by show S0.toNat ≤ pG.sp; omega⟩
  -- cells outside the region keep their words
  have keep : ∀ c : BitVec 64, InObj Γ c.toNat → ¬ Spec.Inv.TableRegion s.memory o.base c →
      t.memory c = s.memory c := fun c hc hr => hmod c (fun hrf => by
    rcases hrf with h | ⟨h1, h2⟩
    · exact hr h
    · exact alloc_not_free hord0 (by rw [hph]; exact h1) (by omega) (alloc_of_in hord0 hL hc))
  have cellB : ∀ y ∈ Γ, ∀ k, y.HasSlot k → y.lo ≤ (y.cell k).toNat ∧ (y.cell k).toNat < y.hi :=
    fun y hy k hks => by
      obtain ⟨e1, -⟩ := cell_toNat hord0 hL hy hks
      unfold Obj.HasSlot at hks
      rw [e1]; unfold Obj.hi Obj.lo at *; omega
  -- the layout part of `G` at exit
  have hL' : Layout guestC p' Γ := layout_heap hL (by show pG.hp ≤ H1.toNat; omega)
    (by show F0.toNat = pG.fp; omega) (by show S0.toNat = pG.sp; omega)
  have hF' : Fields guestC Γ t.memory := by
    intro y hy k hks
    by_cases hp : (guestC.ty y.ty).slot k = .prot
    · rw [hp]; trivial
    · have e := keep (y.cell k) (cell_in hord0 hL hy hks)
        (fun hr => hp (tabTy_prot (reg_tabTy hw hko hr hy (cellB y hy k hks).1 (cellB y hy k hks).2) k))
      have hrd : rd t.memory (y.cell k) = rd s.memory (y.cell k) := by unfold rd; rw [e]
      rw [hrd]
      exact hFl y hy k hks
  have hT' : Tags guestC Γ t.memory := by
    intro y hy tag htg
    obtain ⟨h0, hc⟩ := slot0 hL hy
    have hb := cellB y hy 0 h0
    rw [hc] at hb
    have e := keep y.base (hc ▸ cell_in hord0 hL hy h0) (fun hr => by
      have := tabTy_untagged (reg_tabTy hw hko hr hy hb.1 hb.2)
      rw [this] at htg; cases htg)
    have hrd : rd t.memory y.base = rd s.memory y.base := by unfold rd; rw [e]
    rw [hrd]
    exact hTg y hy tag htg
  have hGl' : Globs guestC Γ t := by
    intro g k hgk
    obtain ⟨w, hw', hf⟩ := hGl g k hgk
    have hne : g ≠ Spec.Inv.hpN := fun e => by
      subst e
      rw [hpN_untyped.1] at hgk
      cases hgk
    exact ⟨w, (gword_keep (hgl g hne)).trans hw', hf⟩
  have hGt : G guestC (trivH (σ := σ)) Γ t := ⟨p', hpt, hord', hL', hF', hT', hGl', fun _ _ => trivial⟩
  -- the growth object
  have hG1 : G guestC (trivH (σ := σ)) (Γ ++ growL o.base H0 H1) t := by
    unfold growL
    split
    · rename_i hgr
      refine G_addObj trivH_lawful trivH_mono hGt
        (x := ⟨H0, tOwn o.base, H1.toNat - H0.toNat⟩) (by show H0.toNat % 8 = 0; rw [← hph]; exact b6)
        (by show (H1.toNat - H0.toNat) % 8 = 0; rw [← hph] at *; omega)
        (by show 0 < H1.toNat - H0.toNat; omega)
        (by rw [own_minSz (tOwn_ge _)]; exact Nat.zero_le _)
        (fun q hq => by
          rw [hpt] at hq; cases hq
          rw [own_region (tOwn_ge _)]
          show heapBase ≤ H0.toNat ∧ H0.toNat + (H1.toNat - H0.toNat) ≤ H1.toNat
          rw [← hph]; omega)
        (fun a ⟨h1, h2⟩ hin => by
          have h1' : H0.toNat ≤ a.toNat := h1
          have h2' : a.toNat < H0.toNat + (H1.toNat - H0.toNat) := h2
          exact alloc_not_free hord0 (by rw [hph]; exact h1') (by omega) (alloc_of_in hord0 hL hin))
        (fun k _ => by rw [own_prot (tOwn_ge _) k]; trivial) (own_untagged (tOwn_ge _)) trivial
    · simpa using hGt
  obtain ⟨p1, hp1, hord1, hL1, hF1, hT1, hGl1, -⟩ := hG1
  have hp1e : p1 = p' := Option.some.inj (hp1.symm.trans hpt)
  subst hp1e
  have hext : Ext Γ (Γ ++ growL o.base H0 H1) := fun y hy =>
    ⟨y, List.mem_append_left _ hy, rfl, rfl, le_refl _⟩
  have hGG : GamOK (Γ ++ growL o.base H0 H1) := gamOK_of_layout hL1
  refine ⟨Γ ++ growL o.base H0 H1, pG, p', ⟨hps, hpt, hmono, hext, ?_, ⟨p', hpt, hord1, hL1, hF1, hT1,
    hGl1, ?_⟩, ?_, ?_, fun h => by simp [setSig] at h, fun _ _ _ _ _ h _ => by simp [setSig] at h⟩,
    trivial⟩
  · -- new objects are fresh
    intro y hy a h1 h2
    rcases List.mem_append.mp hy with hy | hy
    · exact Or.inl ⟨y, hy, rfl, rfl, h1, h2⟩
    · obtain ⟨hgr, rfl⟩ := mem_growL hy
      right; left
      have h1' : H0.toNat ≤ a.toNat := h1
      have h2' : a.toNat < H0.toNat + (H1.toNat - H0.toNat) := h2
      exact ⟨by rw [hph]; exact h1', by show a.toNat < H1.toNat; omega⟩
  · -- the hooks
    intro y hy
    rcases List.mem_append.mp hy with hy | hy
    · by_cases hyo : y = o
      · rw [hyo]
        refine hT.make _ t o (List.mem_append_left _ ho) hGG hko ⟨hwf', ?_, ?_, ?_⟩
        · intro a ha h8
          rcases hregt a ha with h | ⟨h1, h2⟩
          · obtain ⟨x, hx, hox, x1, x2⟩ := harr a h h8
            exact ⟨x, List.mem_append_left _ hx, hox, x1, x2⟩
          · have hgr : H0.toNat < H1.toNat := by omega
            exact ⟨_, List.mem_append_right _ (growL_mem hgr), Or.inr (Or.inl rfl),
              by show H0.toNat ≤ a.toNat; exact h1,
              by show a.toNat < H0.toNat + (H1.toNat - H0.toNat); omega⟩
        · intro w hlw
          rcases hlv w hlw with h | rfl
          · exact fits_ext hext (hvok w h)
          · rw [hot]; exact fits_ext hext hval
        · unfold KLOK at *
          rw [hkl', hkl]
      · have hw1 : H.wf Γ t y := (hF.hH.2 Γ s t y (hW y hy) hd hbe (fun a ha => by
            obtain ⟨x, hx, k, hks, -, rfl⟩ := hF.hH.1 Γ s y a hy (hW y hy) ha
            exact keep _ (cell_in hord0 hL hx hks)
              (fun hr => hT.sep Γ s o y _ hko (hW o ho) hy hyo (hW y hy) ha hr))
          (fun g hg => hgl g (fun e => hpN_untyped.2 (e ▸ hg)))).1
        exact hM Γ _ t p' y y hL1 hext hy (List.mem_append_left _ hy) rfl rfl hw1
    · obtain ⟨-, rfl⟩ := mem_growL hy
      exact hT.arr _ _ _ (Or.inr (tOwn_ge _))
  · -- the footprint
    refine (modifiesOnly_aligned hal hout hmod).mono fun a ⟨hrf, h8⟩ => ?_
    rcases hrf with hr | ⟨h1, h2⟩
    · obtain ⟨x, hx, hox, hxt, x1, x2⟩ := tab_obj ⟨ho, hGo, hwf, harr, hvok, hkl⟩ hko hr
      obtain ⟨x8, s8, -⟩ := hGo.1 x hx
      obtain ⟨k, hks, rfl⟩ := slot_of_mem h8 x8 s8 x1 x2
      refine Or.inr (Or.inr (Or.inr ⟨⟨x, hx, k, hks, tabTy_prot hxt k, rfl⟩, ?_⟩))
      rcases hox with hb | htw | ⟨htw, -⟩
      · have hxo := base_eq hGo ho hx hb
        exact ⟨_, List.mem_cons_self, Or.inr ⟨rfl, x, hx, Or.inl (by rw [hxo, hot]), k, hks, rfl⟩⟩
      · exact ⟨_, List.mem_cons_self, Or.inr ⟨rfl, x, hx, Or.inr (htw ▸ tOwn_ge _), k, hks, rfl⟩⟩
      · exact ⟨_, List.mem_cons_of_mem _ List.mem_cons_self,
          Or.inr ⟨rfl, x, hx, Or.inl htw, k, hks, rfl⟩⟩
    · exact Or.inr (Or.inr (Or.inl fun hal' =>
        alloc_not_free hord0 (by rw [hph]; exact h1) (by omega) hal'))
  · -- protected globals
    exact fun g hg _ => hgl g (fun e => hpN_untyped.2 (e ▸ hg))

end InitECandidate.Solver.MemSafe.HtabEntries
