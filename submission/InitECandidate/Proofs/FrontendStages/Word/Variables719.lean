import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data719
import InitECandidate.Proofs.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word
def assigned719 : NumSet := Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
def variables719 : List Nat := [127, 63, 31, 95, 15, 143, 79, 47, 111, 7, 135, 71, 39, 103, 23, 87, 55, 119, 3, 131, 67, 35, 99, 19, 83, 51, 115, 11,
  139, 75, 43, 107, 27, 91, 59, 123, 129, 65, 33, 97, 17, 145, 81, 49, 113, 9, 137, 73, 41, 105, 25, 89, 57, 121, 5,
  133, 69, 37, 101, 21, 85, 53, 117, 13, 141, 77, 45, 109, 29, 93, 61, 125, 128, 64, 32, 96, 16, 144, 80, 48, 112, 8,
  136, 72, 40, 104, 24, 88, 56, 120, 4, 132, 68, 36, 100, 20, 84, 52, 116, 12, 140, 76, 44, 108, 28, 92, 60, 124, 130,
  66, 34, 98, 18, 82, 50, 114, 10, 138, 74, 42, 106, 26, 90, 58, 122, 6, 134, 70, 38, 102, 22, 86, 54, 118, 14, 142, 78,
  46, 110, 30, 94, 62, 126]
def context719 : Spt Nat := Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 292) 290 (Flapjack.Spt.ls 288)) 286
          (Flapjack.Spt.bs (Flapjack.Spt.ls 284) 282 (Flapjack.Spt.bs Flapjack.Spt.ln 280 (Flapjack.Spt.ls 278))))
        276
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 274) 272 (Flapjack.Spt.ls 270)) 268
          (Flapjack.Spt.bs (Flapjack.Spt.ls 266) 264 (Flapjack.Spt.bs Flapjack.Spt.ln 262 (Flapjack.Spt.ls 260)))))
      258
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 256) 254 (Flapjack.Spt.ls 252)) 250
          (Flapjack.Spt.bs (Flapjack.Spt.ls 248) 246 (Flapjack.Spt.bs Flapjack.Spt.ln 244 (Flapjack.Spt.ls 242))))
        240
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 238) 236 (Flapjack.Spt.ls 234)) 232
          (Flapjack.Spt.bs (Flapjack.Spt.ls 230) 228 (Flapjack.Spt.bs Flapjack.Spt.ln 226 (Flapjack.Spt.ls 224))))))
    6
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 222) 220 (Flapjack.Spt.ls 218)) 216
          (Flapjack.Spt.bs (Flapjack.Spt.ls 214) 212 (Flapjack.Spt.bs Flapjack.Spt.ln 210 (Flapjack.Spt.ls 208))))
        206
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 204) 202 (Flapjack.Spt.ls 200)) 198
          (Flapjack.Spt.bs (Flapjack.Spt.ls 196) 194 (Flapjack.Spt.bs Flapjack.Spt.ln 192 (Flapjack.Spt.ls 190)))))
      188
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 186) 184 (Flapjack.Spt.ls 182)) 180
          (Flapjack.Spt.bs (Flapjack.Spt.ls 178) 176 (Flapjack.Spt.bs Flapjack.Spt.ln 174 (Flapjack.Spt.ls 172))))
        170
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls 168) 166 (Flapjack.Spt.bs Flapjack.Spt.ln 164 (Flapjack.Spt.ls 162))) 160
          (Flapjack.Spt.bs (Flapjack.Spt.ls 158) 156 (Flapjack.Spt.bs Flapjack.Spt.ln 154 (Flapjack.Spt.ls 152)))))))
  2
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 150) 148 (Flapjack.Spt.ls 146)) 144
          (Flapjack.Spt.bs (Flapjack.Spt.ls 142) 140 (Flapjack.Spt.bs Flapjack.Spt.ln 138 (Flapjack.Spt.ls 136))))
        134
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 132) 130 (Flapjack.Spt.ls 128)) 126
          (Flapjack.Spt.bs (Flapjack.Spt.ls 124) 122 (Flapjack.Spt.bs Flapjack.Spt.ln 120 (Flapjack.Spt.ls 118)))))
      116
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 114) 112 (Flapjack.Spt.ls 110)) 108
          (Flapjack.Spt.bs (Flapjack.Spt.ls 106) 104 (Flapjack.Spt.bs Flapjack.Spt.ln 102 (Flapjack.Spt.ls 100))))
        98
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls 96) 94 (Flapjack.Spt.bs Flapjack.Spt.ln 92 (Flapjack.Spt.ls 90))) 88
          (Flapjack.Spt.bs (Flapjack.Spt.ls 86) 84 (Flapjack.Spt.bs Flapjack.Spt.ln 82 (Flapjack.Spt.ls 80))))))
    4
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 78) 76 (Flapjack.Spt.ls 74)) 72
          (Flapjack.Spt.bs (Flapjack.Spt.ls 70) 68 (Flapjack.Spt.bs Flapjack.Spt.ln 66 (Flapjack.Spt.ls 64))))
        62
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 60) 58 (Flapjack.Spt.ls 56)) 54
          (Flapjack.Spt.bs (Flapjack.Spt.ls 52) 50 (Flapjack.Spt.bs Flapjack.Spt.ln 48 (Flapjack.Spt.ls 46)))))
      44
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 42) 40 (Flapjack.Spt.ls 38)) 36
          (Flapjack.Spt.bs (Flapjack.Spt.ls 34) 32 (Flapjack.Spt.bs Flapjack.Spt.ln 30 (Flapjack.Spt.ls 28))))
        26
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 20 (Flapjack.Spt.ls 18))) 16
          (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 12 (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 8)))))))
theorem assigned719_eq : accVarsHOL Loop.output719.2.2 (.ln : Spt Unit) = assigned719 := by
  kernel_rfl
theorem variables719_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output719.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output719.2.1)) = variables719 := by
  rw [assigned719_eq]
  kernel_rfl
theorem context719_eq : makeCtxtHOL 2 (Loop.output719.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output719.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output719.2.1)))
    (.ln : Spt Nat) = context719 := by
  rw [variables719_eq]
  kernel_rfl
#print axioms assigned719_eq
#print axioms variables719_eq
#print axioms context719_eq
end InitECandidate.Proofs.FrontendStages.Word
