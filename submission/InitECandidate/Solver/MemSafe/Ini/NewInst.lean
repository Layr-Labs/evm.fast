import InitECandidate.Solver.MemSafe.Ini.SiStore
import InitECandidate.Solver.MemSafe.Shards.BaseHtab

/-!
# `htab_new(KL, CP)` at any header type of the key length

`csumm_new_th`: the constructor entry for the constant instances of `Shards.newInst`, with the result header type `th`
chosen by the caller (`state_init` builds `tHTb20`, `tHTbc32`, ... tables).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem csumm_new_th {th KL CP : Nat} (hq : (KL, CP) ∈ newInst) (hth : th ∈ hdrTys)
    (hrh : (guestC.ty th).region = .heap) (hthk : htKL th = KL) :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ [] := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hsk := chkChunk_sound hF newSkel baseCTab newSkel_ok newSkel_valid
    (baseCTab_sound hF guestHooksR_guest)
  obtain ⟨h1, h2, h3⟩ := newInst_bounds _ hq
  refine csumm_htab_new hF guestHooksR_mono htabHooks_guestR hth hrh hthk h1 h2 h3 (hsk _ _ _ ?_)
  have key : ∀ (es : List MCand) (tab : CTab) (e : MCand), e ∈ es →
      (e.f, e.sg, e.caps) ∈ chunkTab tab es := by
    intro es
    induction es with
    | nil => intro _ _ h; cases h
    | cons e' es ih =>
        intro tab e h
        unfold chunkTab
        rw [List.foldl_cons]
        rcases List.mem_cons.mp h with rfl | h
        · have mono : ∀ (l : List MCand) (t : CTab) x, x ∈ t → x ∈ chunkTab t l := by
            intro l
            induction l with
            | nil => intro t x hx; exact hx
            | cons a l ih2 => intro t x hx; exact ih2 _ x (List.mem_cons_of_mem _ hx)
          exact mono es _ _ List.mem_cons_self
        · exact ih _ e h
  exact key newSkel baseCTab _ (List.mem_map.mpr ⟨(KL, CP), hq, rfl⟩)

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.csumm_new_th
