import InitECandidate.Proofs.StackAnalysis.Data817
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
def frame817 : Nat := 15
def slim817 : WordLangProgHOL (BitVec 64) :=
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
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 2 } } } })
    (Option.some 69) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 3 } } }))
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
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 4 } } } })
      (Option.some 68) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 5 } } }))
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
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 6 } } } })
        (Option.some 68) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 7 } } }))
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
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 8 } } } })
          (Option.some 68) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 9 } } }))
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
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 10 } } } })
            (Option.some 153) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 11 } } }))
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
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                              Flapjack.Spt.ln,
                          snd := Flapjack.Spt.ln },
                      snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 12 } } } })
              (Option.some 79) List.nil
              (Option.some
                { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 13 } } }))
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
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 14 } } } })
                (Option.some 70) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 15 } } }))
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
                                      Flapjack.Spt.ln)
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                  Flapjack.Spt.ln,
                              snd := Flapjack.Spt.ln },
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 16 } } } })
                  (Option.some 806) List.nil
                  (Option.some
                    { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 17 } } }))
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
                                        Flapjack.Spt.ln)
                                      Flapjack.Spt.ln)
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 18 } } } })
                    (Option.some 70) List.nil
                    (Option.some
                      { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 19 } } }))
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
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                            Flapjack.Spt.ln))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                      Flapjack.Spt.ln,
                                  snd := Flapjack.Spt.ln },
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 20 } } } })
                      (Option.some 806) List.nil
                      (Option.some
                        { fst := 2,
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 21 } } }))
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
                                            Flapjack.Spt.ln)
                                          Flapjack.Spt.ln)
                                        Flapjack.Spt.ln,
                                    snd := Flapjack.Spt.ln },
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 22 } } } })
                        (Option.some 70) List.nil
                        (Option.some
                          { fst := 2,
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 23 } } }))
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
                                                  (Flapjack.Spt.ls PUnit.unit))
                                                Flapjack.Spt.ln)
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                Flapjack.Spt.ln))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                          Flapjack.Spt.ln,
                                      snd := Flapjack.Spt.ln },
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 24 } } } })
                          (Option.some 146) List.nil
                          (Option.some
                            { fst := 2,
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 25 } } }))
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
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                    (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                            Flapjack.Spt.ln,
                                        snd := Flapjack.Spt.ln },
                                    snd :=
                                      { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 26 } } } })
                            (Option.some 146) List.nil
                            (Option.some
                              { fst := 2,
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 27 } } }))
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
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                      (Flapjack.Spt.ls PUnit.unit))
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                                              Flapjack.Spt.ln,
                                          snd := Flapjack.Spt.ln },
                                      snd :=
                                        { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 28 } } } })
                              (Option.some 106) List.nil
                              (Option.some
                                { fst := 2,
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 29 } } }))
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
                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn
                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                        (Flapjack.Spt.ls PUnit.unit))
                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                                    (Flapjack.Spt.bn
                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                          (Flapjack.Spt.ls PUnit.unit))))))
                                                Flapjack.Spt.ln,
                                            snd := Flapjack.Spt.ln },
                                        snd :=
                                          { fst := Flapjack.WordLangProgHOL.skip,
                                            snd := { fst := 817, snd := 30 } } } })
                                (Option.some 106) List.nil
                                (Option.some
                                  { fst := 2,
                                    snd :=
                                      { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 31 } } }))
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
                                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                                      (Flapjack.Spt.bn
                                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                        Flapjack.Spt.ln))
                                                    Flapjack.Spt.ln)
                                                  Flapjack.Spt.ln,
                                              snd := Flapjack.Spt.ln },
                                          snd :=
                                            { fst := Flapjack.WordLangProgHOL.skip,
                                              snd := { fst := 817, snd := 32 } } } })
                                  (Option.some 70) List.nil
                                  (Option.some
                                    { fst := 2,
                                      snd :=
                                        { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 33 } } }))
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
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                            Flapjack.Spt.ln))
                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                            Flapjack.Spt.ln)))
                                                      (Flapjack.Spt.bn
                                                        (Flapjack.Spt.bn
                                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                            Flapjack.Spt.ln))
                                                        (Flapjack.Spt.bn
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                            Flapjack.Spt.ln))))
                                                    Flapjack.Spt.ln,
                                                snd := Flapjack.Spt.ln },
                                            snd :=
                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                snd := { fst := 817, snd := 34 } } } })
                                    (Option.some 808) List.nil
                                    (Option.some
                                      { fst := 2,
                                        snd :=
                                          { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 817, snd := 35 } } }))
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
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.ls PUnit.unit))
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln))
                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln)))
                                                        (Flapjack.Spt.bn
                                                          (Flapjack.Spt.bn
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.ls PUnit.unit))
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln))
                                                          (Flapjack.Spt.bn
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln)
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln))))
                                                      Flapjack.Spt.ln,
                                                  snd := Flapjack.Spt.ln },
                                              snd :=
                                                { fst := Flapjack.WordLangProgHOL.skip,
                                                  snd := { fst := 817, snd := 36 } } } })
                                      (Option.some 70) List.nil
                                      (Option.some
                                        { fst := 2,
                                          snd :=
                                            { fst := Flapjack.WordLangProgHOL.skip,
                                              snd := { fst := 817, snd := 37 } } }))
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
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.ls PUnit.unit))
                                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                Flapjack.Spt.ln))
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                Flapjack.Spt.ln)))
                                                          (Flapjack.Spt.bn
                                                            (Flapjack.Spt.bn
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.ls PUnit.unit))
                                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                Flapjack.Spt.ln))
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                Flapjack.Spt.ln))))
                                                        Flapjack.Spt.ln,
                                                    snd := Flapjack.Spt.ln },
                                                snd :=
                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                    snd := { fst := 817, snd := 38 } } } })
                                        (Option.some 78) List.nil
                                        (Option.some
                                          { fst := 2,
                                            snd :=
                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                snd := { fst := 817, snd := 39 } } }))
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
                                                            (Flapjack.Spt.bn
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.ls PUnit.unit))
                                                              Flapjack.Spt.ln)
                                                            Flapjack.Spt.ln))
                                                        Flapjack.Spt.ln,
                                                    snd := Flapjack.Spt.ln },
                                                snd :=
                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                    snd := { fst := 817, snd := 40 } } } })
                                        (Option.some 147) List.nil
                                        (Option.some
                                          { fst := 2,
                                            snd :=
                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                snd := { fst := 817, snd := 41 } } }))))))))))))))))))))
theorem frame817_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized817.2.1 optimized817.2.2 = frame817 := by cbv
theorem slim817_eq : WordDepth.Executable.slim optimized817.2.2 = slim817 := by cbv
theorem frameEntry817_eq : frameEntry optimized817 = (817, frame817) := by
  unfold frameEntry
  rw [frame817_eq]
  rfl
theorem slimEntry817_eq : slimEntry optimized817 = (817, 3, slim817) := by
  unfold slimEntry
  rw [slim817_eq]
  rfl
#print axioms frame817_eq
#print axioms slim817_eq
end InitECandidate.Proofs.StackAnalysis
