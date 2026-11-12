import InitECandidate.Solver.MemSafe.HtabEntries.Set
import InitECandidate.Solver.Spec.Inv.HtabDel
import InitECandidate.Solver.Spec.Inv.HtabGw

/-!
# `htab_truncate` as a capability entry of the summary table (interface rev. 6)

* `delSpecK`: `delSpecM` (deleting the last entry) also keeps the key length `hdr 0`.
* `truncFns_gw`, `funSpec_trunc_gw`: `htab_truncate` (with `htab_del`, `htab_find_leaf`,
  `memeq`) writes no global.
* `trunc_post`: a returning `htab_truncate(T, n)` on a well-formed table keeps it well formed,
  keeps the key length and the region, writes only the region, and adds no leaf value
  (`TW`, the loop invariant of `Spec/Inv/Htab.lean` with `W := TW m0 K`).
* **`csumm_htab_truncate th`**: the capability summary of `htab_truncate(T : ptr th, n)` with
  the capabilities `capsHT th` and `grows := false` (`G_frame_prot`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## `htab_del` keeps the key length -/

theorem delSpecK (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_del") (fun vs s r u => ∀ T, Spec.Inv.TableWF s T →
      0 < Spec.Inv.cntOf s.memory T → vs = [.val (.word T), .val (.word (Spec.Inv.lastKey s.memory T))] →
      ∀ v, r = .returned v →
      (Spec.Inv.TableWF u T ∧ Spec.Inv.cntOf u.memory T + 1 = Spec.Inv.cntOf s.memory T ∧
        u.memory (T + BitVec.ofNat 64 8) = s.memory (T + BitVec.ofNat 64 8) ∧
        Spec.Inv.ModifiesOnly (Spec.Inv.TableRegion s.memory T) s.memory u.memory ∧
        Spec.Inv.TableRegion u.memory T = Spec.Inv.TableRegion s.memory T ∧
        (∀ w, Spec.Inv.LeafVal u.memory T w → Spec.Inv.LeafVal s.memory T w)) ∧
      Spec.Inv.hdr u.memory T 0 = Spec.Inv.hdr s.memory T 0) := by
  intro vs body callee rs hl s hs hloc r hr T hwf hc hvs v hv
  refine ⟨Spec.Inv.delSpecM hC vs body callee rs hl s hs hloc r hr T hwf hc hvs v hv, ?_⟩
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two Spec.Inv.code_htab_del (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  obtain ⟨hsep, L, hsh, hex⟩ := hwf
  have hT0 : Spec.Inv.DLk s "t" T := by unfold Spec.Inv.DLk; rw [hloc]; exact hA
  have hk0 : Spec.Inv.DLk s "key" (Spec.Inv.lastKey s.memory T) := by
    unfold Spec.Inv.DLk; rw [hloc]; exact hB
  have H := Spec.Inv.delBody_hoare hC s T hT0 hk0 hsh hc s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  obtain ⟨hm, -⟩ := H _ rfl
  rw [hm]
  have hl0 := Spec.Inv.lay_of_sep hsep
  by_cases hA' : Spec.Inv.dLeaf s.memory T = Spec.Inv.hdr s.memory T 56
  · exact Spec.Inv.hdrA hl0 hsh hc hA' (by decide) (by decide) (by decide) (by decide)
  · exact Spec.Inv.hdrB hl0 (Spec.Inv.treeB hsh hc hA') hA' (by decide) (by decide) (by decide)
      (by decide)

/-! ## `htab_truncate` writes no global -/

def truncFns : Spec.EntryList :=
  [fnEntry Guest.Software.guestFn_htab_truncate, fnEntry Guest.Software.guestFn_htab_del,
   fnEntry Guest.Software.guestFn_htab_find_leaf, fnEntry Guest.Software.guestFn_memeq]

theorem truncFns_valid : ∀ e ∈ truncFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [truncFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 140) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 139) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
set_option cbv.warning false in
theorem truncFns_gw (g : MlS) :
    truncFns.all (fun e => gwFreeB g (truncFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

theorem trunc_mem : (truncFns.map Prod.fst).contains (nm "htab_truncate") = true := by decide_cbv

theorem funSpec_trunc_gw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_truncate")
      (fun _ s _ t => ∀ g, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g
  exact funSpec_gw (g := g)
    (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) truncFns_valid (truncFns_gw g))
    trunc_mem vs body callee rs hl s hs hloc r hr

/-! ## The loop -/

/-- What `htab_truncate` keeps of the table at `T`, relative to the entry memory `m0` and key
length `K`. -/
def TW (m0 : Spec.Inv.Mem) (K : BitVec 64) (s : State σ) (T : BitVec 64) : Prop :=
  Spec.Inv.TableWF s T ∧ Spec.Inv.hdr s.memory T 0 = K ∧
    Spec.Inv.TableRegion s.memory T = Spec.Inv.TableRegion m0 T ∧
    (∀ a, ¬ Spec.Inv.TableRegion m0 T a → s.memory a = m0 a) ∧
    (∀ w, Spec.Inv.LeafVal s.memory T w → Spec.Inv.LeafVal m0 T w)

theorem tw_memOnly (m0 : Spec.Inv.Mem) (K : BitVec 64) : Spec.Inv.MemOnly (TW (σ := σ) m0 K) := by
  intro s u T hm hd hbe ⟨h1, h2, h3, h4, h5⟩
  exact ⟨Spec.Inv.tableWF_memOnly s u T hm hd hbe h1, by rw [hm]; exact h2, by rw [hm]; exact h3,
    fun a ha => by rw [hm]; exact h4 a ha, fun w hw => h5 w (by rw [hm] at hw; exact hw)⟩

theorem tw_del (hC : X.code.lookup = guestCode) (m0 : Spec.Inv.Mem) (K : BitVec 64) :
    Spec.Inv.DelSpec σ X (TW m0 K) := by
  intro vs body callee rs hl s hs hloc r hr T ⟨h1, h2, h3, h4, h5⟩ hc hvs v hv
  obtain ⟨⟨u1, u2, u3, u4, u5, u6⟩, u7⟩ := delSpecK hC vs body callee rs hl s hs hloc r hr T h1 hc hvs v hv
  refine ⟨⟨u1, u7.trans h2, u5.trans h3, fun a ha => ?_, fun w hw => h5 w (u6 w hw)⟩, u2, u3⟩
  rw [u4 a (by rw [h3]; exact ha)]
  exact h4 a ha

/-- The loop body ends normally and keeps the local `t`. -/
theorem truncBody_none (T : BitVec 64) :
    Hoare σ X (fun s => s.locals.lookup (nm "t") = some (.val (.word T))) Spec.Inv.truncLoopBody
      (fun r t => r = none ∧ t.locals.lookup (nm "t") = some (.val (.word T))) := by
  refine hoare_dec fun s _ hT v1 _ _ => ?_
  refine hoare_dec fun s1 _ hs1 v2 _ _ => ?_
  refine hoare_callD (funSpec_true _) fun s2 _ hs2 vs _ callee v st _ _ => ?_
  subst hs1 hs2
  refine ⟨rfl, ?_⟩
  simp only []
  rw [Spec.Inv.lookup_restore (by decide), Spec.Inv.lookup_restore (by decide),
    lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
  exact hT

/-- **`htab_truncate` keeps a well-formed table** (returns). -/
theorem trunc_post (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_truncate") (fun vs s r u => ∀ T N, vs = [.val (.word T), .val (.word N)] →
      Spec.Inv.TableWF s T → ∀ v, r = .returned v → TW s.memory (Spec.Inv.hdr s.memory T 0) u T) := by
  intro vs body callee rs hl s hs hloc r hr T N hvs hwf v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two Spec.Inv.code_htab_truncate (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  set W := TW (σ := σ) s.memory (Spec.Inv.hdr s.memory T 0) with hWdef
  have hW : Spec.Inv.MemOnly W := tw_memOnly _ _
  have hdel : Spec.Inv.DelSpec σ X W := tw_del hC _ _
  have hT : s.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hN : s.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hW0 : W s T := ⟨hwf, rfl, rfl, fun _ _ => rfl, fun _ h => h⟩
  -- the loop invariant, with the table local fixed
  let I : State σ → Prop := fun u => Spec.Inv.TrI W u ∧ u.locals.lookup (nm "t") = some (.val (.word T))
  let QL : Option (PanSemResultExact 64) → State σ → Prop := fun r u =>
    (r = none → I u) ∧ ∀ v, r = some (.returned v) → False
  have hwhile : Hoare σ X I (.while Spec.Inv.truncCond Spec.Inv.truncLoopBody) QL := by
    refine hoare_while (fun u ⟨⟨T', N', h1, h2, h3, h4⟩, h5⟩ =>
        ⟨⟨T', N', h1, h2, h3, hW u _ T' rfl rfl rfl h4⟩, h5⟩) ?_
      (fun u _ hI _ => ⟨fun _ => hI, fun _ h => by cases h⟩)
    intro u hu ⟨⟨hI, hTt⟩, hc⟩ ht
    have h1 := Spec.Inv.truncLoop_step hW hdel (Spec.Inv.trμ u) u hu ⟨hI, hc, rfl⟩ ht
    obtain ⟨hn, hT'⟩ := truncBody_none T u hu hTt ht
    refine ⟨fun _ => ⟨(h1 (Or.inl hn)).1, hT'⟩, fun h => (by rw [hn] at h; cases h),
      fun h => (by rw [hn] at h; cases h), fun v h => (by rw [hn] at h; cases h)⟩
  have hbody : Hoare σ X (fun u => u = s) Spec.Inv.truncBody
      (fun r u => ∀ v, r = some (.returned v) → W u T) := by
    refine hoare_dec fun u _ hus v1 hv1 _ => ?_
    subst hus
    rw [Spec.Inv.ev_tLoad_inv hT hv1]
    refine hoare_pre (P := I) ?_ (fun t _ ht => by
      subst ht
      refine ⟨⟨T, N, ?_, ?_, ?_, hW _ _ T rfl rfl rfl hW0⟩, ?_⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hT
      · rw [lk_set_ne _ _ (by decide)]; exact hN
      · rw [lk_set_self]; rfl
      · rw [lk_set_ne _ _ (by decide)]; exact hT)
    refine hoare_seq hwhile (fun r t _ hne _ ⟨_, h2⟩ v hv => ?_) ?_
    · subst hv; exact (h2 v rfl).elim
    · refine hoare_return fun t _ ⟨hI, _⟩ w _ v' _ => ?_
      obtain ⟨⟨T', N', h1, -, -, h4⟩, h5⟩ := hI rfl
      rw [h5] at h1
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h1
      subst h1
      exact hW _ _ _ rfl rfl rfl h4
  exact hbody s hs rfl (by rw [hr, hv]; trivial) v (by rw [hr, hv])

/-! ## The entry -/

/-- An aligned region cell of a table of `Γ` is a `prot` cell of an object the table owns, and
the all-cells capabilities of its header type cover it. -/
theorem reg_cap {Γ : Gam} {s : State σ} {o : Obj} {th : Nat} (hw : tabW Γ s o)
    (hko : hkOf o.ty = .tab) (hot : o.ty = th) {a : BitVec 64}
    (hr : Spec.Inv.TableRegion s.memory o.base a) (h8 : a.toNat % 8 = 0) :
    ProtCell guestC Γ a ∧ CapPW (capsHT th) s Γ a := by
  obtain ⟨x, hx, hox, hxt, x1, x2⟩ := tab_obj hw hko hr
  have hGo := hw.2.1
  obtain ⟨x8, s8, -⟩ := hGo.1 x hx
  obtain ⟨k, hks, rfl⟩ := slot_of_mem h8 x8 s8 x1 x2
  refine ⟨⟨x, hx, k, hks, tabTy_prot hxt k, rfl⟩, ?_⟩
  rcases hox with hb | htw | ⟨htw, -⟩
  · have hxo := base_eq hGo hw.1 hx hb
    exact ⟨_, List.mem_cons_self, Or.inr ⟨rfl, x, hx, Or.inl (by rw [hxo, hot]), k, hks, rfl⟩⟩
  · exact ⟨_, List.mem_cons_self, Or.inr ⟨rfl, x, hx, Or.inr (htw ▸ tOwn_ge _), k, hks, rfl⟩⟩
  · exact ⟨_, List.mem_cons_of_mem _ List.mem_cons_self, Or.inr ⟨rfl, x, hx, Or.inl htw, k, hks, rfl⟩⟩

/-- The signature of `htab_truncate` on tables of header type `th`. -/
def truncSig (th : Nat) : Sig := ⟨[.fits (.ptr th), .any], [], [], false⟩

/-- **The `htab_truncate` entry** for header type `th` (interface rev. 6). -/
theorem csumm_htab_truncate {H : Hooks σ} (hF : FoldOK σ X guestC H) (hT : HtabHooks H)
    {th : Nat} (hth : th ∈ hdrTys) :
    CSumm σ X guestC H (nm "htab_truncate") (truncSig th) (capsHT th) := by
  have hk : hkOf th = .tab := hkOf_of_tab hth
  refine sumSpecA_of_returns (noExc_htabX hF.hX _ (by decide)) ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨-, -, A, B, rfl, sa, sb, -, -⟩ := lookupCode_two Spec.Inv.code_htab_truncate (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨p, hps, -, hA⟩ := hargs
  obtain ⟨w0, e0, o, ho, hoT, hot⟩ := hA 0 _ _ rfl rfl
  simp only [wordOf, Option.some.injEq] at e0
  subst e0 hoT
  have hG0 := hG
  obtain ⟨pG, hpG, hord, hL, -, -, -, hW⟩ := hG0
  have hpp : pG = p := Option.some.inj (hpG.symm.trans hps)
  subst hpp
  have hko : hkOf o.ty = .tab := by rw [hot]; exact hk
  have hw : tabW Γ s o := hT.get Γ s o hko (hW o ho)
  obtain ⟨-, hGo, hwf, harr, hvok, hkl⟩ := id hw
  obtain ⟨h1, h2, h3, h4, h5⟩ := trunc_post hF.hX _ body callee rs hl s hs hloc r hr o.base N rfl hwf v hv
  have hgl := funSpec_trunc_gw hF.hX _ body callee rs hl s hs hloc r hr
  set t := (evaluateHOLFiniteState s body).2 with htdef
  have hd : t.memaddrs = s.memaddrs := memaddrs_preserved s body
  have hbe : t.be = s.be := Spec.Inv.be_preserved s body
  have hout : ∀ x, ¬ s.memaddrs x → t.memory x = s.memory x := fun x hx => memOut_preserved body s hx
  have hal : ∀ x, s.memaddrs x → x.toNat % 8 = 0 := fun x h => hF.hal x (hs.2.1 ▸ h)
  have hpt : ptrsOf t = ptrsOf s := by unfold ptrsOf; rw [gword_keep (hgl _), gword_keep (hgl _), gword_keep (hgl _)]
  have hmodA : ModifiesOnly (fun a => Spec.Inv.TableRegion s.memory o.base a ∧ a.toNat % 8 = 0)
      s.memory t.memory := modifiesOnly_aligned hal hout h4
  have hGt : G guestC H Γ t := by
    refine G_frame_prot hF.hH hG hpt (fun g _ _ => gword_keep (hgl g)) (fun g _ => hgl g) hd hbe hmodA
      (fun a ⟨hr', h8⟩ => (reg_cap hw hko hot hr' h8).1) (fun y hy htg hR => ?_) (fun y hy hx => ?_)
    · obtain ⟨hr', -⟩ := hR
      have h0 := slot0 hL hy
      have hpos := (hL.1 y hy).2.2.1
      have := tabTy_untagged (reg_tabTy hw hko hr' hy (le_refl _) (by unfold Obj.hi; omega))
      rw [this] at htg
      simp at htg
    · by_cases hyo : y = o
      · rw [hyo]
        refine hT.make Γ t o ho hGo hko ⟨h1, fun a ha h8 => harr a (by rw [h3] at ha; exact ha) h8,
          fun w hlw => hvok w (h5 w hlw), ?_⟩
        unfold KLOK at *
        rw [h2]
        exact hkl
      · obtain ⟨a, ⟨hr', -⟩, hfp⟩ := hx
        exact (hT.sep Γ s o y a hko (hW o ho) hy hyo (hW y hy) hfp hr').elim
  refine ⟨Γ, pG, pG, ⟨hps, hpt.trans hps, ⟨le_refl _, le_refl _, le_refl _⟩,
    fun y hy => ⟨y, hy, rfl, rfl, le_refl _⟩, Helpers.newFresh_same, hGt, ?_,
    fun g _ _ => hgl g, fun _ => Helpers.newFresh_same, fun _ _ _ _ _ h _ => (by simp [truncSig] at h)⟩,
    trivial⟩
  refine hmodA.mono fun a ha => Or.inr (Or.inr (Or.inr (reg_cap hw hko hot ha.1 ha.2)))

end InitECandidate.Solver.MemSafe.HtabEntries
