import InitECandidate.Proofs.StackAnalysis.Data378
import InitECandidate.Proofs.StackAnalysis.Entries
import Lean
import Flapjack.RiscV.NativeSource
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.StackAnalysis
def frame378 : Nat := 13
def slim378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 List.nil,
        snd :=
          {
            fst :=
              {
                fst :=
                  Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 2 } } } })
    (Option.some 102) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.seq
    (Flapjack.WordLangProgHOL.call
      (Option.some
        { fst := List.cons 2 List.nil,
          snd :=
            {
              fst :=
                {
                  fst :=
                    Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 4 } } } })
      (Option.some 106) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 5 } } }))
    (Flapjack.WordLangProgHOL.seq
      (Flapjack.WordLangProgHOL.call
        (Option.some
          { fst := List.cons 2 List.nil,
            snd :=
              {
                fst :=
                  {
                    fst :=
                      Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 6 } } } })
        (Option.some 102) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 7 } } }))
      (Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.call
          (Option.some
            { fst := List.cons 2 List.nil,
              snd :=
                {
                  fst :=
                    {
                      fst :=
                        Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                Flapjack.Spt.ln)
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                              Flapjack.Spt.ln))
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 8 } } } })
          (Option.some 107) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 9 } } }))
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.call
            (Option.some
              { fst := List.cons 2 List.nil,
                snd :=
                  {
                    fst :=
                      {
                        fst :=
                          Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                  Flapjack.Spt.ln)
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 10 } } } })
            (Option.some 101) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 11 } } }))
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.call
                (Option.some
                  { fst := List.cons 2 List.nil,
                    snd :=
                      {
                        fst :=
                          {
                            fst :=
                              Flapjack.Spt.bn
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    Flapjack.Spt.ln))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 12 } } } })
                (Option.some 371) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 13 } } }))
              (Flapjack.WordLangProgHOL.seq
                (Flapjack.WordLangProgHOL.call
                  (Option.some
                    { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
                      snd :=
                        {
                          fst :=
                            {
                              fst :=
                                Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                        Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                  Flapjack.Spt.ln,
                              snd := Flapjack.Spt.ln },
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 14 } } } })
                  (Option.some 116) List.nil
                  (Option.some
                    { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 15 } } }))
                (Flapjack.WordLangProgHOL.seq
                  (Flapjack.WordLangProgHOL.call
                    (Option.some
                      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
                        snd :=
                          {
                            fst :=
                              {
                                fst :=
                                  Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 16 } } } })
                    (Option.some 116) List.nil
                    (Option.some
                      { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 17 } } }))
                  (Flapjack.WordLangProgHOL.seq
                    (Flapjack.WordLangProgHOL.call
                      (Option.some
                        { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
                          snd :=
                            {
                              fst :=
                                {
                                  fst :=
                                    Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                      Flapjack.Spt.ln,
                                  snd := Flapjack.Spt.ln },
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 18 } } } })
                      (Option.some 116) List.nil
                      (Option.some
                        { fst := 2,
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 19 } } }))
                    (Flapjack.WordLangProgHOL.seq
                      (Flapjack.WordLangProgHOL.call
                        (Option.some
                          { fst := List.cons 2 List.nil,
                            snd :=
                              {
                                fst :=
                                  {
                                    fst :=
                                      Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                        Flapjack.Spt.ln,
                                    snd := Flapjack.Spt.ln },
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 20 } } } })
                        (Option.some 105) List.nil
                        (Option.some
                          { fst := 2,
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 21 } } }))
                      (Flapjack.WordLangProgHOL.seq
                        (Flapjack.WordLangProgHOL.call
                          (Option.some
                            { fst := List.cons 2 List.nil,
                              snd :=
                                {
                                  fst :=
                                    {
                                      fst :=
                                        Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                Flapjack.Spt.ln)
                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                          Flapjack.Spt.ln,
                                      snd := Flapjack.Spt.ln },
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 22 } } } })
                          (Option.some 105) List.nil
                          (Option.some
                            { fst := 2,
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 23 } } }))
                        (Flapjack.WordLangProgHOL.call
                          (Option.some
                            { fst := List.cons 2 List.nil,
                              snd :=
                                {
                                  fst :=
                                    {
                                      fst :=
                                        Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                Flapjack.Spt.ln)
                                              Flapjack.Spt.ln)
                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                          Flapjack.Spt.ln,
                                      snd := Flapjack.Spt.ln },
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 24 } } } })
                          (Option.some 372) List.nil
                          (Option.some
                            { fst := 2,
                              snd :=
                                { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 25 } } }))))))))
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.call
                (Option.some
                  { fst := List.cons 2 List.nil,
                    snd :=
                      {
                        fst :=
                          {
                            fst :=
                              Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                      Flapjack.Spt.ln)
                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 26 } } } })
                (Option.some 373) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 27 } } }))
              (Flapjack.WordLangProgHOL.seq
                (Flapjack.WordLangProgHOL.call
                  (Option.some
                    { fst := List.cons 2 List.nil,
                      snd :=
                        {
                          fst :=
                            {
                              fst :=
                                Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                        Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                  Flapjack.Spt.ln,
                              snd := Flapjack.Spt.ln },
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 28 } } } })
                  (Option.some 374) List.nil
                  (Option.some
                    { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 29 } } }))
                (Flapjack.WordLangProgHOL.seq
                  (Flapjack.WordLangProgHOL.call
                    (Option.some
                      { fst := List.cons 2 List.nil,
                        snd :=
                          {
                            fst :=
                              {
                                fst :=
                                  Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          Flapjack.Spt.ln)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 30 } } } })
                    (Option.some 375) List.nil
                    (Option.some
                      { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 31 } } }))
                  (Flapjack.WordLangProgHOL.call
                    (Option.some
                      { fst := List.cons 2 List.nil,
                        snd :=
                          {
                            fst :=
                              {
                                fst :=
                                  Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          Flapjack.Spt.ln)
                                        Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          Flapjack.Spt.ln)
                                        Flapjack.Spt.ln))
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 32 } } } })
                    (Option.some 376) List.nil
                    (Option.some
                      { fst := 2,
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 378, snd := 33 } } }))))))))))
theorem frame378_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized378.2.1 optimized378.2.2 = frame378 := by cbv
theorem slim378_eq : WordDepth.Executable.slim optimized378.2.2 = slim378 := by cbv
theorem frameEntry378_eq : frameEntry optimized378 = (378, frame378) := by
  unfold frameEntry
  rw [frame378_eq]
  rfl
theorem slimEntry378_eq : slimEntry optimized378 = (378, 4, slim378) := by
  unfold slimEntry
  rw [slim378_eq]
  rfl
#print axioms frame378_eq
#print axioms slim378_eq
end InitECandidate.Proofs.StackAnalysis
