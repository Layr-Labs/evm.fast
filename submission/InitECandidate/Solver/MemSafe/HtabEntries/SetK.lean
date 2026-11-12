import InitECandidate.Solver.MemSafe.HtabEntries.Set

/-!
# `htab_set` with a key outside the table (for `htab_union_into`)

`sumSpec_htab_set_k th`: the `csumm_htab_set` proof with the key as an `.any` parameter and the
precondition `SetPreK` instead of `buf (htKL th)`: the key bytes `[key, key + htKL th)` do not wrap
and miss the table's region and the free heap (`KeyOut`). This covers keys that lie in another
table's key array (`prot` cells, not a `buf`). The key bytes are only read, so they are not in
the footprint.
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.AllocImpl
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `htab_set` with an unconstrained key parameter. -/
def setSigK (th : Nat) : Sig := ⟨[.fits (.ptr th), .any, valPT th], [], [], true⟩

/-- The key bytes `[K, K + n)` do not wrap and miss the table's region and the free heap. -/
def KeyOut (s : State σ) (T K : BitVec 64) (n hp : Nat) : Prop :=
  K.toNat + n ≤ 2 ^ 64 ∧ ∀ a : BitVec 64, K.toNat ≤ a.toNat → a.toNat < K.toNat + n →
    ¬ Spec.Inv.TableRegion s.memory T a ∧ ¬ (hp ≤ a.toNat ∧ a.toNat < heapEnd)

def SetPreK (th : Nat) (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam) : Prop :=
  ∃ T K V : BitVec 64, vs = [.val (.word T), .val (.word K), .val (.word V)] ∧
    ∃ p, ptrsOf s = some p ∧ KeyOut s T K (htKL th) p.hp

theorem setArgsK {Γ : Gam} {p : Ptrs} {th : Nat} {T key val : BitVec 64}
    (h : ArgsOK guestC Γ p (setSigK th).params [.val (.word T), .val (.word key), .val (.word val)]) :
    (∃ o ∈ Γ, o.base = T ∧ o.ty = th) ∧ Fits Γ (valK th) val := by
  obtain ⟨-, hv⟩ := h
  have h0 := hv 0 _ _ rfl rfl
  have h2 := hv 2 _ _ rfl rfl
  obtain ⟨w0, e0, f0⟩ := h0
  simp only [wordOf, Option.some.injEq] at e0
  subst e0
  exact ⟨f0, valPT_fits h2⟩

/-- **`htab_set` with a key outside the table and the free heap** (e.g. a key of another table). -/
theorem sumSpec_htab_set_k {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th : Nat} (hth : th ∈ hdrTys) :
    SumSpecA σ X guestC H (nm "htab_set") (setSigK th) (SetPreK th)
      (fun _ s Γ a => CapPW (capsHT th) s Γ a) (fun _ _ _ _ _ _ => True) := by
  have hk : hkOf th = .tab := hkOf_of_tab hth
  have he : Spec.Inv.heapEnd = heapEnd := rfl
  refine sumSpecA_of_returns (noExc_htabX hF.hX _ (by decide)) ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs hpre
  -- the arguments are three words
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨-, -, A, B, C, rfl, sa, sb, sc, -, -, -⟩ :=
    Spec.Inv.lookupCode_three_full Spec.Inv.code_htab_set (by decide) (by decide) (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨key, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨val, rfl⟩ := val_of_shapeEq_one sc
  obtain ⟨p, hps, hA⟩ := hargs
  obtain ⟨⟨o, ho, hoT, hot⟩, hval⟩ := setArgsK hA
  obtain ⟨T', K', V', hvs, pk, hpk, hkw, hkout⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
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
  have hpkG : pk = pG := Option.some.inj (hpk.symm.trans hpG)
  subst pk
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
    hGl1, ?_⟩, ?_, ?_, fun h => by simp [setSigK] at h, fun _ _ _ _ _ h _ => by simp [setSigK] at h⟩,
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
