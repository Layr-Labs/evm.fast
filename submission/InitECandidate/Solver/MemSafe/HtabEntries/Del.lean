import InitECandidate.Solver.MemSafe.HtabEntries.Truncate
import InitECandidate.Solver.Spec.Inv.HtabDelGenCode

/-!
# General-key `htab_del` as a capability entry of the summary table

* `funSpec_del_gw`: `htab_del` (with `htab_find_leaf`, `memeq`) writes no global.
* **`csumm_htab_del th`**: the capability summary of `htab_del(T : ptr th, key)` for every header
  type `th`, with the all-cells capabilities `capsHT th` and `grows := false`. The key is `.any`
  (as in `Sigs.guestSigs`): `htab_del` reads its key only before its first store, and the spec
  (`Spec.Inv.delSpecGen`) needs nothing about the key's bytes — whatever leaf the walk reaches
  is a live leaf, and deleting it keeps the table well formed. `NoExc` is `noExc_htabX`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem del_mem : (truncFns.map Prod.fst).contains (nm "htab_del") = true := by decide_cbv

theorem funSpec_del_gw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_del")
      (fun _ s _ t => ∀ g, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g
  exact funSpec_gw (g := g)
    (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) truncFns_valid (truncFns_gw g))
    del_mem vs body callee rs hl s hs hloc r hr

/-- The signature of `htab_del` on tables of header type `th` (key unconstrained). -/
def delSig (th : Nat) : Sig := ⟨[.fits (.ptr th), .any], [], [], false⟩

/-- **The general-key `htab_del` entry** for header type `th`. -/
theorem csumm_htab_del {H : Hooks σ} (hF : FoldOK σ X guestC H) (hT : HtabHooks H)
    {th : Nat} (hth : th ∈ hdrTys) :
    CSumm σ X guestC H (nm "htab_del") (delSig th) (capsHT th) := by
  have hk : hkOf th = .tab := hkOf_of_tab hth
  refine sumSpecA_of_returns (noExc_htabX hF.hX _ (by decide)) ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨-, -, A, B, rfl, sa, sb, -, -⟩ := lookupCode_two Spec.Inv.code_htab_del (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨key, rfl⟩ := val_of_shapeEq_one sb
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
  obtain ⟨h1, -, hh, h4, h3, h5⟩ :=
    Spec.Inv.delSpecGen hF.hX _ body callee rs hl s hs hloc r hr o.base key rfl hwf v hv
  have h2 := hh 0 (by decide) (by decide) (by decide) (by decide)
  have hgl := funSpec_del_gw hF.hX _ body callee rs hl s hs hloc r hr
  set t := (evaluateHOLFiniteState s body).2 with htdef
  have hd : t.memaddrs = s.memaddrs := memaddrs_preserved s body
  have hbe : t.be = s.be := Spec.Inv.be_preserved s body
  have hout : ∀ x, ¬ s.memaddrs x → t.memory x = s.memory x := fun x hx => memOut_preserved body s hx
  have hal : ∀ x, s.memaddrs x → x.toNat % 8 = 0 := fun x h => hF.hal x (hs.2.1 ▸ h)
  have hpt : ptrsOf t = ptrsOf s := by
    unfold ptrsOf; rw [gword_keep (hgl _), gword_keep (hgl _), gword_keep (hgl _)]
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
    fun g _ _ => hgl g, fun _ => Helpers.newFresh_same, fun _ _ _ _ _ h _ => (by simp [delSig] at h)⟩,
    trivial⟩
  refine hmodA.mono fun a ha => Or.inr (Or.inr (Or.inr (reg_cap hw hko hot ha.1 ha.2)))

/-- The `htab_del` entries, one per header type (for `Shards.baseHCTab`; not yet merged). -/
def delTab : CTab := hdrTys.map fun th => (nm "htab_del", delSig th, capsHT th)

theorem delTab_sound {H : Hooks σ} (hF : FoldOK σ X guestC H) (hT : HtabHooks H) :
    CTabSound σ X guestC H delTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_htab_del hF hT hth

end InitECandidate.Solver.MemSafe.HtabEntries
