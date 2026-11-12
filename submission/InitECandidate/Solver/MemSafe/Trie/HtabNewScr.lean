import InitECandidate.Solver.MemSafe.Hooks.Laws
import InitECandidate.Solver.Spec.Inv.HtabNew
import InitECandidate.Solver.MemSafe.HtabEntries.New
import InitECandidate.Solver.MemSafe.Dn.Scr
import InitECandidate.Solver.MemSafe.Shards.BaseHtab
import InitECandidate.Solver.MemSafe.Rec.BaseR

/-!
# `htab_new` with `ScrOld`

`ssumm_htab_new`: `HtabEntries.csumm_htab_new` with the post `ScrOld Γ Γ'` (the objects added are heap objects, the skeleton
adds none), and its instance `sa_htab_new_20_64` at `guestHooksR`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.AllocImpl
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **The `htab_new` entry** for a constant instance, from the skeleton summary. -/
theorem ssumm_htab_new {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th KL CP : Nat} (hth : th ∈ hdrTys) (hrh : (guestC.ty th).region = .heap)
    (hthk : htKL th = KL) (hK0 : 0 < KL) (hK : KL ≤ 2 ^ 16) (hCP : CP ≤ 2 ^ 20)
    (hsk : CSumm σ X guestC H (nm "htab_new") ⟨[.eq KL, .eq CP], [], [], false⟩ []) :
    SumSpecA σ X guestC H (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => CapPW [] s Γ a)
      (fun _ _ Γ _ _ Γ' => ∀ o ∈ Γ', (Types.guestC.ty o.ty).region = .scratch →
        ∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty) := by
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
    obtain ⟨H0, F0, S0, hH0, -, -, hpe⟩ := ptrsOf_some hpG
    have b1 := hord.1
    have b2 := hord.2.1
    have b6 := hord.2.2.2.2.2.1
    have hH0' : s.globals.lookup Spec.Inv.hpN = some (.val (.word H0)) := lookup_of_gword hH0
    have hKLn : (BitVec.ofNat 64 KL).toNat = KL := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hCPn : (BitVec.ofNat 64 CP).toNat = CP := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hpp : pG.hp = H0.toNat := by rw [hpe]
    have hNP := Spec.Inv.funSpec_htab_new hF.hX vs body callee rs hl s hs hloc _ hr
      (BitVec.ofNat 64 KL) (BitVec.ofNat 64 CP) H0 hvs hH0'
      (by rw [← hpp]; exact b2) (by rw [← hpp]; exact b6) (by rw [hKLn]; exact hK)
      (by rw [hCPn]; exact hCP) v rfl
    obtain ⟨rfl, hwf, hcnt, hkl, H1, hH1, hle, hHe, h18, hreg, -, -⟩ := hNP
    set u := (evaluateHOLFiniteState s body).2
    have hp'h : p'.hp = H1.toNat := by
      obtain ⟨a, b, c, ha', -, -, rfl⟩ := ptrsOf_some c2
      have : gword u gHeap = some H1 := gword_of_lookup hH1
      rw [this] at ha'; cases ha'; rfl
    have he : Spec.Inv.heapEnd = heapEnd := rfl
    -- the arrays lie above the header
    obtain ⟨hnb, hnd⟩ := tab_nodeByte hwf
    have hnr := hreg _ hnb
    unfold Spec.Inv.InR at hnr
    have h88 : H0.toNat + 88 < H1.toNat := by omega
    have hfree : ∀ a : BitVec 64, H0.toNat ≤ a.toNat → a.toNat < H1.toNat →
        InLiveB p' .heap a.toNat ∧ ¬ InObj Γ' a.toNat := fun a h1 h2 =>
      ⟨⟨by unfold heapBase at *; omega, by omega⟩,
        not_inObj_free hord hL hnf (by rw [hpp]; omega) (by omega)⟩
    have hG'' := G_addTableG hF.hH hM hT (th := th) (ta := tOwn H0) (rg := .heap) (hkOf_of_tab hth)
      (Or.inr (tOwn_ge _)) hrh (own_region (tOwn_ge _)) (by rw [hdr_minSz th hth])
      (by rw [own_minSz (tOwn_ge _)]; omega) (hdr_prot th hth) (own_prot (tOwn_ge _))
      (hdr_untagged th hth) (own_untagged (tOwn_ge _)) c6 c2 hwf hcnt (by rw [hkl, hthk])
      (lo := H0.toNat + 88) (hi := H1.toNat)
      (by omega) h18 h88 (by omega) (Or.inl (le_refl _)) (Or.inl rfl)
      (fun a ha => by
        have := hreg a ha
        unfold Spec.Inv.InR at this ⊢
        by_cases h : a.toNat < H0.toNat + 88
        · exact Or.inl ⟨this.1, h⟩
        · exact Or.inr ⟨by omega, by omega⟩)
      (fun a h1 h2 => hfree a (by omega) h2) (fun a h1 h2 => hfree a h1 (by omega))
    refine ⟨Γ' ++ [arrObjT (tOwn H0) (H0.toNat + 88) H1.toNat] ++ [hdrObjT th H0], pG, p',
      ⟨hpG, c2, c3, ?_, ?_, hG'', c7, c8, (fun h => by cases h), ?_⟩, ?_⟩
    · intro o ho
      obtain ⟨o', ho', h1, h2, h3⟩ := c4 o ho
      exact ⟨o', by simp [ho'], h1, h2, h3⟩
    · intro o ho a h1 h2
      simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
      rcases ho with ho | ho
      · exact c5 o ho a h1 h2
      · right; left
        have hb := newObj_bytes (by omega) (by omega) ho h1 h2
        rw [hpp, hp'h]; omega
    · intro v' hv'
      cases hv'
      exact retOK_ptr ⟨hdrObjT th H0, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
    · intro o ho hr
      obtain ⟨pg6, -, -, hL6, -⟩ := id c6
      simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
      rcases ho with ho | ho | ho
      · exact Dn.scrOld_of_nf0 hL6 hnf o ho hr
      · subst ho
        have : (arrObjT (tOwn H0) (H0.toNat + 88) H1.toNat).ty = tOwn H0 := rfl
        rw [this, own_region (tOwn_ge _)] at hr
        cases hr
      · subst ho
        have : (hdrObjT th H0).ty = th := rfl
        rw [this, hrh] at hr
        cases hr
  · obtain ⟨pg6, -, -, hL6, -⟩ := id c6
    exact ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, (fun h => by cases h),
      fun v hv => absurd ⟨v, hv⟩ hret⟩, Dn.scrOld_of_nf0 hL6 (c9 rfl)⟩

end InitECandidate.Solver.MemSafe.HtabEntries

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open Flapjack.Pancake.PanLang (MlS ProgHOL)

def newSkel2064 : List MCand :=
  [MCand.ofPair (nm "htab_new") (declPair Guest.Software.guestFn_htab_new) ⟨[.eq 20, .eq 64], [], [], false⟩ []]

theorem newSkel2064_ok : chkChunk Types.guestC baseCTab newSkel2064 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem newSkel2064_valid : ∀ e ∈ newSkel2064, e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 128) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

/-- `htab_new(20, 64)` at `guestHooksR`, with `ScrOld`. -/
theorem sa_htab_new_20_64 {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq 20, .eq 64], [.fits (.ptr tHTh20)], [], true⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => CapPW [] s Γ a)
      (fun _ _ Γ _ _ Γ' => ∀ o ∈ Γ', (Types.guestC.ty o.ty).region = .scratch →
        ∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hsk := chkChunk_sound hF newSkel2064 baseCTab newSkel2064_ok newSkel2064_valid
    (baseCTab_sound hF Hooks.guestHooksR_guest)
  exact ssumm_htab_new hF Hooks.guestHooksR_mono Hooks.htabHooks_guestR (th := tHTh20) (KL := 20) (CP := 64)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (hsk _ _ _ List.mem_cons_self)

end InitECandidate.Solver.MemSafe.Shards

#print axioms InitECandidate.Solver.MemSafe.Shards.sa_htab_new_20_64
