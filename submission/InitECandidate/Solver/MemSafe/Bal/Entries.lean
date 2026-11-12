import InitECandidate.Solver.MemSafe.Bal.Kit
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Shards.BaseHtab

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- `htab_new(KL, CP)` with the result at an explicit header type (one of the fold's constant instances). -/
theorem csumm_htab_new_ty {q : Nat × Nat} (hq : q ∈ newInst) {th : Nat} (hth : th ∈ hdrTys)
    (hrh : (guestC.ty th).region = .heap) (hthk : htKL th = q.1) :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq q.1, .eq q.2], [.fits (.ptr th)], [], true⟩ [] := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hsk := chkChunk_sound hF newSkel baseCTab newSkel_ok newSkel_valid
    (baseCTab_sound hF guestHooksR_guest)
  obtain ⟨h1, h2, h3⟩ := newInst_bounds q hq
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
  exact key newSkel baseCTab _ (List.mem_map.mpr ⟨q, hq, rfl⟩)

theorem new_20_64 : (20, 64) ∈ newInst := by decide
theorem new_32_8 : (32, 8) ∈ newInst := by decide

theorem htabNew_d20 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq 20, .eq 64], [.fits (.ptr tHTd20)], [], true⟩ [] :=
  csumm_htab_new_ty (q := (20, 64)) new_20_64 (by decide) (by decide) (by decide)

theorem htabNew_l32 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq 32, .eq 8], [.fits (.ptr tHTl32)], [], true⟩ [] :=
  csumm_htab_new_ty (q := (32, 8)) new_32_8 (by decide) (by decide) (by decide)

theorem htabNew_h32 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq 32, .eq 8], [.fits (.ptr tHTh32)], [], true⟩ [] :=
  csumm_htab_new_ty (q := (32, 8)) new_32_8 (by decide) (by decide) (by decide)

theorem lstNew_c4 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new") (lnSigL tLSTc 4) [] :=
  csumm_lst_newL Rec.foldOK_guestR guestHooksR_mono lstHooks_guestR (by decide) (by decide) (by decide) (by decide)

theorem lstNew_n4 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new") (lnSigL tLSTn 4) [] :=
  csumm_lst_newL Rec.foldOK_guestR guestHooksR_mono lstHooks_guestR (by decide) (by decide) (by decide) (by decide)

theorem lstNew_k2 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new") (lnSigL tLSTk 2) [] :=
  csumm_lst_newL Rec.foldOK_guestR guestHooksR_mono lstHooks_guestR (by decide) (by decide) (by decide) (by decide)

theorem lstNew_c2 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new") (lnSigL tLSTc 2) [] :=
  csumm_lst_newL Rec.foldOK_guestR guestHooksR_mono lstHooks_guestR (by decide) (by decide) (by decide) (by decide)

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.htabNew_d20
#print axioms InitECandidate.Solver.MemSafe.Bal.lstNew_c4
