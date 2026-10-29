import InitECandidate.Proofs.StackAnalysis.Data279
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
def frame279 : Nat := 26
def slim279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
        snd :=
          {
            fst :=
              {
                fst :=
                  Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln))
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 2 } } } })
    (Option.some 99) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 3 } } }))
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
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln))
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 4 } } } })
      (Option.some 99) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 5 } } }))
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
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                Flapjack.Spt.ln))
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 6 } } } })
        (Option.some 99) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 7 } } }))
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
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                  Flapjack.Spt.ln))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                  Flapjack.Spt.ln)
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 8 } } } })
          (Option.some 120) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 9 } } }))
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
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 10 } } } })
            (Option.some 102) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 11 } } }))
          (Flapjack.WordLangProgHOL.seq
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
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 12 } } } })
                (Option.some 116) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 13 } } }))
              (Flapjack.WordLangProgHOL.seq
                (Flapjack.WordLangProgHOL.call
                  (Option.some
                    {
                      fst :=
                        List.cons 2
                          (List.cons 4
                            (List.cons 6
                              (List.cons 8 (List.cons 10 (List.cons 12 (List.cons 14 (List.cons 16 List.nil))))))),
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
                                          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                  Flapjack.Spt.ln,
                              snd := Flapjack.Spt.ln },
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 14 } } } })
                  (Option.some 121) List.nil
                  (Option.some
                    { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 15 } } }))
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
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 16 } } } })
                    (Option.some 66) List.nil
                    (Option.some
                      { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 17 } } }))
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
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                      Flapjack.Spt.ln,
                                  snd := Flapjack.Spt.ln },
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 18 } } } })
                      (Option.some 99) List.nil
                      (Option.some
                        { fst := 2,
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 19 } } }))
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
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit)))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit)))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                        Flapjack.Spt.ln,
                                    snd := Flapjack.Spt.ln },
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 20 } } } })
                        (Option.some 120) List.nil
                        (Option.some
                          { fst := 2,
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 21 } } }))
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
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                          Flapjack.Spt.ln,
                                      snd := Flapjack.Spt.ln },
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 22 } } } })
                          (Option.some 130) List.nil
                          (Option.some
                            { fst := 2,
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 23 } } }))
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
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                          Flapjack.Spt.ln,
                                      snd := Flapjack.Spt.ln },
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 24 } } } })
                          (Option.some 102) List.nil
                          (Option.some
                            { fst := 2,
                              snd :=
                                { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 25 } } }))))))))
            (Flapjack.WordLangProgHOL.call
              (Option.some
                { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
                  snd :=
                    {
                      fst :=
                        {
                          fst :=
                            Flapjack.Spt.bn
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                    Flapjack.Spt.ln)
                                  Flapjack.Spt.ln))
                              Flapjack.Spt.ln,
                          snd := Flapjack.Spt.ln },
                      snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 26 } } } })
              (Option.some 130) List.nil
              (Option.some
                { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 279, snd := 27 } } })))))))
theorem frame279_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized279.2.1 optimized279.2.2 = frame279 := by cbv
theorem slim279_eq : WordDepth.Executable.slim optimized279.2.2 = slim279 := by cbv
theorem frameEntry279_eq : frameEntry optimized279 = (279, frame279) := by
  unfold frameEntry
  rw [frame279_eq]
  rfl
theorem slimEntry279_eq : slimEntry optimized279 = (279, 4, slim279) := by
  unfold slimEntry
  rw [slim279_eq]
  rfl
#print axioms frame279_eq
#print axioms slim279_eq
end InitECandidate.Proofs.StackAnalysis
