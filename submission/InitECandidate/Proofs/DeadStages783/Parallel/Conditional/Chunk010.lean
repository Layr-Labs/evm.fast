import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages783.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages783.Parallel
theorem node2560_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value157 value1 value2 = (output196, value160, value1))
    (child2559 : Flapjack.WordAlloc.removeDeadStructural input2559 value160 value1 value2 = (output2559, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2560 value157 value1 value2 = (output2560, value1162, value1) := by
  rw [input2560_def, output2560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child2559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output2559_skip]
  kernel_rfl

theorem node2561_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value157 value1 value2 = (output191, value157, value1))
    (child2560 : Flapjack.WordAlloc.removeDeadStructural input2560 value157 value1 value2 = (output2560, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2561 value157 value1 value2 = (output2561, value1162, value1) := by
  rw [input2561_def, output2561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child2560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output2560_skip]
  kernel_rfl

theorem node2562_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value156 value1 value2 = (output190, value157, value1))
    (child2561 : Flapjack.WordAlloc.removeDeadStructural input2561 value157 value1 value2 = (output2561, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2562 value156 value1 value2 = (output2562, value1162, value1) := by
  rw [input2562_def, output2562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child2561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output2561_skip]
  kernel_rfl

theorem node2563_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value155 value1 value2 = (output189, value156, value1))
    (child2562 : Flapjack.WordAlloc.removeDeadStructural input2562 value156 value1 value2 = (output2562, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2563 value155 value1 value2 = (output2563, value1162, value1) := by
  rw [input2563_def, output2563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child2562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output2562_skip]
  kernel_rfl

theorem node2564_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value154 value1 value2 = (output188, value155, value1))
    (child2563 : Flapjack.WordAlloc.removeDeadStructural input2563 value155 value1 value2 = (output2563, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2564 value154 value1 value2 = (output2564, value1162, value1) := by
  rw [input2564_def, output2564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child2563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output2563_skip]
  kernel_rfl

theorem node2565_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value153 value1 value2 = (output187, value154, value1))
    (child2564 : Flapjack.WordAlloc.removeDeadStructural input2564 value154 value1 value2 = (output2564, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2565 value153 value1 value2 = (output2565, value1162, value1) := by
  rw [input2565_def, output2565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child2564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output2564_skip]
  kernel_rfl

theorem node2566_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value152 value1 value2 = (output186, value153, value1))
    (child2565 : Flapjack.WordAlloc.removeDeadStructural input2565 value153 value1 value2 = (output2565, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2566 value152 value1 value2 = (output2566, value1162, value1) := by
  rw [input2566_def, output2566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child2565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output2565_skip]
  kernel_rfl

theorem node2567_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value151 value1 value2 = (output185, value152, value1))
    (child2566 : Flapjack.WordAlloc.removeDeadStructural input2566 value152 value1 value2 = (output2566, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2567 value151 value1 value2 = (output2567, value1162, value1) := by
  rw [input2567_def, output2567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child2566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output2566_skip]
  kernel_rfl

theorem node2568_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value150 value1 value2 = (output184, value151, value1))
    (child2567 : Flapjack.WordAlloc.removeDeadStructural input2567 value151 value1 value2 = (output2567, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2568 value150 value1 value2 = (output2568, value1162, value1) := by
  rw [input2568_def, output2568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child2567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output2567_skip]
  kernel_rfl

theorem node2569_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value149 value1 value2 = (output183, value150, value1))
    (child2568 : Flapjack.WordAlloc.removeDeadStructural input2568 value150 value1 value2 = (output2568, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2569 value149 value1 value2 = (output2569, value1162, value1) := by
  rw [input2569_def, output2569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child2568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output2568_skip]
  kernel_rfl

theorem node2570_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value148 value1 value2 = (output182, value149, value1))
    (child2569 : Flapjack.WordAlloc.removeDeadStructural input2569 value149 value1 value2 = (output2569, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2570 value148 value1 value2 = (output2570, value1162, value1) := by
  rw [input2570_def, output2570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child2569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output2569_skip]
  kernel_rfl

theorem node2571_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value147 value1 value2 = (output181, value148, value1))
    (child2570 : Flapjack.WordAlloc.removeDeadStructural input2570 value148 value1 value2 = (output2570, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2571 value147 value1 value2 = (output2571, value1162, value1) := by
  rw [input2571_def, output2571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child2570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output2570_skip]
  kernel_rfl

theorem node2572_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value146 value1 value2 = (output180, value147, value1))
    (child2571 : Flapjack.WordAlloc.removeDeadStructural input2571 value147 value1 value2 = (output2571, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2572 value146 value1 value2 = (output2572, value1162, value1) := by
  rw [input2572_def, output2572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child2571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output2571_skip]
  kernel_rfl

theorem node2573_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value145 value1 value2 = (output179, value146, value1))
    (child2572 : Flapjack.WordAlloc.removeDeadStructural input2572 value146 value1 value2 = (output2572, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2573 value145 value1 value2 = (output2573, value1162, value1) := by
  rw [input2573_def, output2573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child2572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output2572_skip]
  kernel_rfl

theorem node2574_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value142 value1 value2 = (output178, value145, value1))
    (child2573 : Flapjack.WordAlloc.removeDeadStructural input2573 value145 value1 value2 = (output2573, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2574 value142 value1 value2 = (output2574, value1162, value1) := by
  rw [input2574_def, output2574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child2573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output2573_skip]
  kernel_rfl

theorem node2575_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value142 value1 value2 = (output173, value142, value1))
    (child2574 : Flapjack.WordAlloc.removeDeadStructural input2574 value142 value1 value2 = (output2574, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2575 value142 value1 value2 = (output2575, value1162, value1) := by
  rw [input2575_def, output2575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child2574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output2574_skip]
  kernel_rfl

theorem node2576_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value141 value1 value2 = (output172, value142, value1))
    (child2575 : Flapjack.WordAlloc.removeDeadStructural input2575 value142 value1 value2 = (output2575, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2576 value141 value1 value2 = (output2576, value1162, value1) := by
  rw [input2576_def, output2576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child2575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output2575_skip]
  kernel_rfl

theorem node2577_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value140 value1 value2 = (output171, value141, value1))
    (child2576 : Flapjack.WordAlloc.removeDeadStructural input2576 value141 value1 value2 = (output2576, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2577 value140 value1 value2 = (output2577, value1162, value1) := by
  rw [input2577_def, output2577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child2576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output2576_skip]
  kernel_rfl

theorem node2578_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value139 value1 value2 = (output170, value140, value1))
    (child2577 : Flapjack.WordAlloc.removeDeadStructural input2577 value140 value1 value2 = (output2577, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2578 value139 value1 value2 = (output2578, value1162, value1) := by
  rw [input2578_def, output2578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child2577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output2577_skip]
  kernel_rfl

theorem node2579_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value138 value1 value2 = (output169, value139, value1))
    (child2578 : Flapjack.WordAlloc.removeDeadStructural input2578 value139 value1 value2 = (output2578, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2579 value138 value1 value2 = (output2579, value1162, value1) := by
  rw [input2579_def, output2579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child2578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output2578_skip]
  kernel_rfl

theorem node2580_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value137 value1 value2 = (output168, value138, value1))
    (child2579 : Flapjack.WordAlloc.removeDeadStructural input2579 value138 value1 value2 = (output2579, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2580 value137 value1 value2 = (output2580, value1162, value1) := by
  rw [input2580_def, output2580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child2579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output2579_skip]
  kernel_rfl

theorem node2581_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value136 value1 value2 = (output167, value137, value1))
    (child2580 : Flapjack.WordAlloc.removeDeadStructural input2580 value137 value1 value2 = (output2580, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2581 value136 value1 value2 = (output2581, value1162, value1) := by
  rw [input2581_def, output2581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child2580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output2580_skip]
  kernel_rfl

theorem node2582_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value135 value1 value2 = (output166, value136, value1))
    (child2581 : Flapjack.WordAlloc.removeDeadStructural input2581 value136 value1 value2 = (output2581, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2582 value135 value1 value2 = (output2582, value1162, value1) := by
  rw [input2582_def, output2582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child2581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output2581_skip]
  kernel_rfl

theorem node2583_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value134 value1 value2 = (output165, value135, value1))
    (child2582 : Flapjack.WordAlloc.removeDeadStructural input2582 value135 value1 value2 = (output2582, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2583 value134 value1 value2 = (output2583, value1162, value1) := by
  rw [input2583_def, output2583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child2582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output2582_skip]
  kernel_rfl

theorem node2584_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value133 value1 value2 = (output164, value134, value1))
    (child2583 : Flapjack.WordAlloc.removeDeadStructural input2583 value134 value1 value2 = (output2583, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2584 value133 value1 value2 = (output2584, value1162, value1) := by
  rw [input2584_def, output2584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child2583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output2583_skip]
  kernel_rfl

theorem node2585_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value132 value1 value2 = (output163, value133, value1))
    (child2584 : Flapjack.WordAlloc.removeDeadStructural input2584 value133 value1 value2 = (output2584, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2585 value132 value1 value2 = (output2585, value1162, value1) := by
  rw [input2585_def, output2585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child2584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output2584_skip]
  kernel_rfl

theorem node2586_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value131 value1 value2 = (output162, value132, value1))
    (child2585 : Flapjack.WordAlloc.removeDeadStructural input2585 value132 value1 value2 = (output2585, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2586 value131 value1 value2 = (output2586, value1162, value1) := by
  rw [input2586_def, output2586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child2585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output2585_skip]
  kernel_rfl

theorem node2587_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value130 value1 value2 = (output161, value131, value1))
    (child2586 : Flapjack.WordAlloc.removeDeadStructural input2586 value131 value1 value2 = (output2586, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2587 value130 value1 value2 = (output2587, value1162, value1) := by
  rw [input2587_def, output2587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child2586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output2586_skip]
  kernel_rfl

theorem node2588_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value127 value1 value2 = (output160, value130, value1))
    (child2587 : Flapjack.WordAlloc.removeDeadStructural input2587 value130 value1 value2 = (output2587, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2588 value127 value1 value2 = (output2588, value1162, value1) := by
  rw [input2588_def, output2588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child2587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output2587_skip]
  kernel_rfl

theorem node2589_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value127 value1 value2 = (output155, value127, value1))
    (child2588 : Flapjack.WordAlloc.removeDeadStructural input2588 value127 value1 value2 = (output2588, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2589 value127 value1 value2 = (output2589, value1162, value1) := by
  rw [input2589_def, output2589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child2588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output2588_skip]
  kernel_rfl

theorem node2590_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value126 value1 value2 = (output154, value127, value1))
    (child2589 : Flapjack.WordAlloc.removeDeadStructural input2589 value127 value1 value2 = (output2589, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2590 value126 value1 value2 = (output2590, value1162, value1) := by
  rw [input2590_def, output2590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child2589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output2589_skip]
  kernel_rfl

theorem node2591_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value125 value1 value2 = (output153, value126, value1))
    (child2590 : Flapjack.WordAlloc.removeDeadStructural input2590 value126 value1 value2 = (output2590, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2591 value125 value1 value2 = (output2591, value1162, value1) := by
  rw [input2591_def, output2591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child2590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output2590_skip]
  kernel_rfl

theorem node2592_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value124 value1 value2 = (output152, value125, value1))
    (child2591 : Flapjack.WordAlloc.removeDeadStructural input2591 value125 value1 value2 = (output2591, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2592 value124 value1 value2 = (output2592, value1162, value1) := by
  rw [input2592_def, output2592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child2591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output2591_skip]
  kernel_rfl

theorem node2593_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value123 value1 value2 = (output151, value124, value1))
    (child2592 : Flapjack.WordAlloc.removeDeadStructural input2592 value124 value1 value2 = (output2592, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2593 value123 value1 value2 = (output2593, value1162, value1) := by
  rw [input2593_def, output2593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child2592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output2592_skip]
  kernel_rfl

theorem node2594_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value122 value1 value2 = (output150, value123, value1))
    (child2593 : Flapjack.WordAlloc.removeDeadStructural input2593 value123 value1 value2 = (output2593, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2594 value122 value1 value2 = (output2594, value1162, value1) := by
  rw [input2594_def, output2594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child2593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output2593_skip]
  kernel_rfl

theorem node2595_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value121 value1 value2 = (output149, value122, value1))
    (child2594 : Flapjack.WordAlloc.removeDeadStructural input2594 value122 value1 value2 = (output2594, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2595 value121 value1 value2 = (output2595, value1162, value1) := by
  rw [input2595_def, output2595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child2594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output2594_skip]
  kernel_rfl

theorem node2596_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value120 value1 value2 = (output148, value121, value1))
    (child2595 : Flapjack.WordAlloc.removeDeadStructural input2595 value121 value1 value2 = (output2595, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2596 value120 value1 value2 = (output2596, value1162, value1) := by
  rw [input2596_def, output2596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child2595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output2595_skip]
  kernel_rfl

theorem node2597_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value119 value1 value2 = (output147, value120, value1))
    (child2596 : Flapjack.WordAlloc.removeDeadStructural input2596 value120 value1 value2 = (output2596, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2597 value119 value1 value2 = (output2597, value1162, value1) := by
  rw [input2597_def, output2597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child2596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output2596_skip]
  kernel_rfl

theorem node2598_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value118 value1 value2 = (output146, value119, value1))
    (child2597 : Flapjack.WordAlloc.removeDeadStructural input2597 value119 value1 value2 = (output2597, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2598 value118 value1 value2 = (output2598, value1162, value1) := by
  rw [input2598_def, output2598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child2597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output2597_skip]
  kernel_rfl

theorem node2599_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value117 value1 value2 = (output145, value118, value1))
    (child2598 : Flapjack.WordAlloc.removeDeadStructural input2598 value118 value1 value2 = (output2598, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2599 value117 value1 value2 = (output2599, value1162, value1) := by
  rw [input2599_def, output2599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child2598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output2598_skip]
  kernel_rfl

theorem node2600_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value116 value1 value2 = (output144, value117, value1))
    (child2599 : Flapjack.WordAlloc.removeDeadStructural input2599 value117 value1 value2 = (output2599, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2600 value116 value1 value2 = (output2600, value1162, value1) := by
  rw [input2600_def, output2600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child2599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output2599_skip]
  kernel_rfl

theorem node2601_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value115 value1 value2 = (output143, value116, value1))
    (child2600 : Flapjack.WordAlloc.removeDeadStructural input2600 value116 value1 value2 = (output2600, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2601 value115 value1 value2 = (output2601, value1162, value1) := by
  rw [input2601_def, output2601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child2600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output2600_skip]
  kernel_rfl

theorem node2602_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value112 value1 value2 = (output142, value115, value1))
    (child2601 : Flapjack.WordAlloc.removeDeadStructural input2601 value115 value1 value2 = (output2601, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2602 value112 value1 value2 = (output2602, value1162, value1) := by
  rw [input2602_def, output2602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child2601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output2601_skip]
  kernel_rfl

theorem node2603_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value112 value1 value2 = (output137, value112, value1))
    (child2602 : Flapjack.WordAlloc.removeDeadStructural input2602 value112 value1 value2 = (output2602, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2603 value112 value1 value2 = (output2603, value1162, value1) := by
  rw [input2603_def, output2603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child2602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output2602_skip]
  kernel_rfl

theorem node2604_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value111 value1 value2 = (output136, value112, value1))
    (child2603 : Flapjack.WordAlloc.removeDeadStructural input2603 value112 value1 value2 = (output2603, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2604 value111 value1 value2 = (output2604, value1162, value1) := by
  rw [input2604_def, output2604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child2603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output2603_skip]
  kernel_rfl

theorem node2605_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value110 value1 value2 = (output135, value111, value1))
    (child2604 : Flapjack.WordAlloc.removeDeadStructural input2604 value111 value1 value2 = (output2604, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2605 value110 value1 value2 = (output2605, value1162, value1) := by
  rw [input2605_def, output2605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child2604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output2604_skip]
  kernel_rfl

theorem node2606_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value109 value1 value2 = (output134, value110, value1))
    (child2605 : Flapjack.WordAlloc.removeDeadStructural input2605 value110 value1 value2 = (output2605, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2606 value109 value1 value2 = (output2606, value1162, value1) := by
  rw [input2606_def, output2606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child2605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output2605_skip]
  kernel_rfl

theorem node2607_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value108 value1 value2 = (output133, value109, value1))
    (child2606 : Flapjack.WordAlloc.removeDeadStructural input2606 value109 value1 value2 = (output2606, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2607 value108 value1 value2 = (output2607, value1162, value1) := by
  rw [input2607_def, output2607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child2606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output2606_skip]
  kernel_rfl

theorem node2608_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value107 value1 value2 = (output132, value108, value1))
    (child2607 : Flapjack.WordAlloc.removeDeadStructural input2607 value108 value1 value2 = (output2607, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2608 value107 value1 value2 = (output2608, value1162, value1) := by
  rw [input2608_def, output2608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child2607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output2607_skip]
  kernel_rfl

theorem node2609_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value106 value1 value2 = (output131, value107, value1))
    (child2608 : Flapjack.WordAlloc.removeDeadStructural input2608 value107 value1 value2 = (output2608, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2609 value106 value1 value2 = (output2609, value1162, value1) := by
  rw [input2609_def, output2609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child2608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output2608_skip]
  kernel_rfl

theorem node2610_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value105 value1 value2 = (output130, value106, value1))
    (child2609 : Flapjack.WordAlloc.removeDeadStructural input2609 value106 value1 value2 = (output2609, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2610 value105 value1 value2 = (output2610, value1162, value1) := by
  rw [input2610_def, output2610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child2609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output2609_skip]
  kernel_rfl

theorem node2611_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value104 value1 value2 = (output129, value105, value1))
    (child2610 : Flapjack.WordAlloc.removeDeadStructural input2610 value105 value1 value2 = (output2610, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2611 value104 value1 value2 = (output2611, value1162, value1) := by
  rw [input2611_def, output2611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child2610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output2610_skip]
  kernel_rfl

theorem node2612_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value103 value1 value2 = (output128, value104, value1))
    (child2611 : Flapjack.WordAlloc.removeDeadStructural input2611 value104 value1 value2 = (output2611, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2612 value103 value1 value2 = (output2612, value1162, value1) := by
  rw [input2612_def, output2612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child2611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output2611_skip]
  kernel_rfl

theorem node2613_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value102 value1 value2 = (output127, value103, value1))
    (child2612 : Flapjack.WordAlloc.removeDeadStructural input2612 value103 value1 value2 = (output2612, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2613 value102 value1 value2 = (output2613, value1162, value1) := by
  rw [input2613_def, output2613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child2612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output2612_skip]
  kernel_rfl

theorem node2614_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value102, value1))
    (child2613 : Flapjack.WordAlloc.removeDeadStructural input2613 value102 value1 value2 = (output2613, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2614 value101 value1 value2 = (output2614, value1162, value1) := by
  rw [input2614_def, output2614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child2613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output2613_skip]
  kernel_rfl

theorem node2615_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1))
    (child2614 : Flapjack.WordAlloc.removeDeadStructural input2614 value101 value1 value2 = (output2614, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2615 value100 value1 value2 = (output2615, value1162, value1) := by
  rw [input2615_def, output2615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child2614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output2614_skip]
  kernel_rfl

theorem node2616_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value97 value1 value2 = (output124, value100, value1))
    (child2615 : Flapjack.WordAlloc.removeDeadStructural input2615 value100 value1 value2 = (output2615, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2616 value97 value1 value2 = (output2616, value1162, value1) := by
  rw [input2616_def, output2616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child2615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output2615_skip]
  kernel_rfl

theorem node2617_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value97 value1 value2 = (output119, value97, value1))
    (child2616 : Flapjack.WordAlloc.removeDeadStructural input2616 value97 value1 value2 = (output2616, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2617 value97 value1 value2 = (output2617, value1162, value1) := by
  rw [input2617_def, output2617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child2616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output2616_skip]
  kernel_rfl

theorem node2618_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value96 value1 value2 = (output118, value97, value1))
    (child2617 : Flapjack.WordAlloc.removeDeadStructural input2617 value97 value1 value2 = (output2617, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2618 value96 value1 value2 = (output2618, value1162, value1) := by
  rw [input2618_def, output2618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child2617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output2617_skip]
  kernel_rfl

theorem node2619_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value95 value1 value2 = (output117, value96, value1))
    (child2618 : Flapjack.WordAlloc.removeDeadStructural input2618 value96 value1 value2 = (output2618, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2619 value95 value1 value2 = (output2619, value1162, value1) := by
  rw [input2619_def, output2619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child2618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output2618_skip]
  kernel_rfl

theorem node2620_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value94 value1 value2 = (output116, value95, value1))
    (child2619 : Flapjack.WordAlloc.removeDeadStructural input2619 value95 value1 value2 = (output2619, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2620 value94 value1 value2 = (output2620, value1162, value1) := by
  rw [input2620_def, output2620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child2619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output2619_skip]
  kernel_rfl

theorem node2621_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value93 value1 value2 = (output115, value94, value1))
    (child2620 : Flapjack.WordAlloc.removeDeadStructural input2620 value94 value1 value2 = (output2620, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2621 value93 value1 value2 = (output2621, value1162, value1) := by
  rw [input2621_def, output2621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child2620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output2620_skip]
  kernel_rfl

theorem node2622_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value92 value1 value2 = (output114, value93, value1))
    (child2621 : Flapjack.WordAlloc.removeDeadStructural input2621 value93 value1 value2 = (output2621, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2622 value92 value1 value2 = (output2622, value1162, value1) := by
  rw [input2622_def, output2622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child2621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output2621_skip]
  kernel_rfl

theorem node2623_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value92, value1))
    (child2622 : Flapjack.WordAlloc.removeDeadStructural input2622 value92 value1 value2 = (output2622, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2623 value91 value1 value2 = (output2623, value1162, value1) := by
  rw [input2623_def, output2623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child2622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output2622_skip]
  kernel_rfl

theorem node2624_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1))
    (child2623 : Flapjack.WordAlloc.removeDeadStructural input2623 value91 value1 value2 = (output2623, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2624 value90 value1 value2 = (output2624, value1162, value1) := by
  rw [input2624_def, output2624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child2623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output2623_skip]
  kernel_rfl

theorem node2625_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1))
    (child2624 : Flapjack.WordAlloc.removeDeadStructural input2624 value90 value1 value2 = (output2624, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2625 value89 value1 value2 = (output2625, value1162, value1) := by
  rw [input2625_def, output2625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child2624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output2624_skip]
  kernel_rfl

theorem node2626_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1))
    (child2625 : Flapjack.WordAlloc.removeDeadStructural input2625 value89 value1 value2 = (output2625, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2626 value88 value1 value2 = (output2626, value1162, value1) := by
  rw [input2626_def, output2626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child2625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output2625_skip]
  kernel_rfl

theorem node2627_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1))
    (child2626 : Flapjack.WordAlloc.removeDeadStructural input2626 value88 value1 value2 = (output2626, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2627 value87 value1 value2 = (output2627, value1162, value1) := by
  rw [input2627_def, output2627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child2626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output2626_skip]
  kernel_rfl

theorem node2628_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1))
    (child2627 : Flapjack.WordAlloc.removeDeadStructural input2627 value87 value1 value2 = (output2627, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2628 value86 value1 value2 = (output2628, value1162, value1) := by
  rw [input2628_def, output2628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child2627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output2627_skip]
  kernel_rfl

theorem node2629_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child2628 : Flapjack.WordAlloc.removeDeadStructural input2628 value86 value1 value2 = (output2628, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2629 value85 value1 value2 = (output2629, value1162, value1) := by
  rw [input2629_def, output2629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child2628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output2628_skip]
  kernel_rfl

theorem node2630_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value82 value1 value2 = (output106, value85, value1))
    (child2629 : Flapjack.WordAlloc.removeDeadStructural input2629 value85 value1 value2 = (output2629, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2630 value82 value1 value2 = (output2630, value1162, value1) := by
  rw [input2630_def, output2630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child2629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output2629_skip]
  kernel_rfl

theorem node2631_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value82 value1 value2 = (output101, value82, value1))
    (child2630 : Flapjack.WordAlloc.removeDeadStructural input2630 value82 value1 value2 = (output2630, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2631 value82 value1 value2 = (output2631, value1162, value1) := by
  rw [input2631_def, output2631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child2630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output2630_skip]
  kernel_rfl

theorem node2632_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value81 value1 value2 = (output100, value82, value1))
    (child2631 : Flapjack.WordAlloc.removeDeadStructural input2631 value82 value1 value2 = (output2631, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2632 value81 value1 value2 = (output2632, value1162, value1) := by
  rw [input2632_def, output2632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child2631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output2631_skip]
  kernel_rfl

theorem node2633_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value81, value1))
    (child2632 : Flapjack.WordAlloc.removeDeadStructural input2632 value81 value1 value2 = (output2632, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2633 value80 value1 value2 = (output2633, value1162, value1) := by
  rw [input2633_def, output2633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child2632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output2632_skip]
  kernel_rfl

theorem node2634_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1))
    (child2633 : Flapjack.WordAlloc.removeDeadStructural input2633 value80 value1 value2 = (output2633, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2634 value79 value1 value2 = (output2634, value1162, value1) := by
  rw [input2634_def, output2634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child2633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output2633_skip]
  kernel_rfl

theorem node2635_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1))
    (child2634 : Flapjack.WordAlloc.removeDeadStructural input2634 value79 value1 value2 = (output2634, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2635 value78 value1 value2 = (output2635, value1162, value1) := by
  rw [input2635_def, output2635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child2634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output2634_skip]
  kernel_rfl

theorem node2636_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1))
    (child2635 : Flapjack.WordAlloc.removeDeadStructural input2635 value78 value1 value2 = (output2635, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2636 value77 value1 value2 = (output2636, value1162, value1) := by
  rw [input2636_def, output2636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child2635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output2635_skip]
  kernel_rfl

theorem node2637_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1))
    (child2636 : Flapjack.WordAlloc.removeDeadStructural input2636 value77 value1 value2 = (output2636, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2637 value76 value1 value2 = (output2637, value1162, value1) := by
  rw [input2637_def, output2637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child2636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output2636_skip]
  kernel_rfl

theorem node2638_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1))
    (child2637 : Flapjack.WordAlloc.removeDeadStructural input2637 value76 value1 value2 = (output2637, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2638 value75 value1 value2 = (output2638, value1162, value1) := by
  rw [input2638_def, output2638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child2637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output2637_skip]
  kernel_rfl

theorem node2639_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1))
    (child2638 : Flapjack.WordAlloc.removeDeadStructural input2638 value75 value1 value2 = (output2638, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2639 value74 value1 value2 = (output2639, value1162, value1) := by
  rw [input2639_def, output2639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child2638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output2638_skip]
  kernel_rfl

theorem node2640_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value72 value1 value2 = (output92, value74, value1))
    (child2639 : Flapjack.WordAlloc.removeDeadStructural input2639 value74 value1 value2 = (output2639, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2640 value72 value1 value2 = (output2640, value1162, value1) := by
  rw [input2640_def, output2640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child2639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output2639_skip]
  kernel_rfl

theorem node2641_cond_eq
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value71 value1 value2 = (output89, value72, value1))
    (child2640 : Flapjack.WordAlloc.removeDeadStructural input2640 value72 value1 value2 = (output2640, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2641 value71 value1 value2 = (output2641, value1162, value1) := by
  rw [input2641_def, output2641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child89]
  try dsimp only
  rw [child2640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output89_skip, output2640_skip]
  kernel_rfl

theorem node2642_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value69 value1 value2 = (output88, value71, value1))
    (child2641 : Flapjack.WordAlloc.removeDeadStructural input2641 value71 value1 value2 = (output2641, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2642 value69 value1 value2 = (output2642, value1162, value1) := by
  rw [input2642_def, output2642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child2641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output2641_skip]
  kernel_rfl

theorem node2643_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value68 value1 value2 = (output85, value69, value1))
    (child2642 : Flapjack.WordAlloc.removeDeadStructural input2642 value69 value1 value2 = (output2642, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2643 value68 value1 value2 = (output2643, value1162, value1) := by
  rw [input2643_def, output2643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child2642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output2642_skip]
  kernel_rfl

theorem node2644_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value66 value1 value2 = (output84, value68, value1))
    (child2643 : Flapjack.WordAlloc.removeDeadStructural input2643 value68 value1 value2 = (output2643, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2644 value66 value1 value2 = (output2644, value1162, value1) := by
  rw [input2644_def, output2644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child2643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output2643_skip]
  kernel_rfl

theorem node2645_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1))
    (child2644 : Flapjack.WordAlloc.removeDeadStructural input2644 value66 value1 value2 = (output2644, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2645 value65 value1 value2 = (output2645, value1162, value1) := by
  rw [input2645_def, output2645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child2644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output2644_skip]
  kernel_rfl

theorem node2646_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value63 value1 value2 = (output80, value65, value1))
    (child2645 : Flapjack.WordAlloc.removeDeadStructural input2645 value65 value1 value2 = (output2645, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2646 value63 value1 value2 = (output2646, value1162, value1) := by
  rw [input2646_def, output2646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child2645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output2645_skip]
  kernel_rfl

theorem node2647_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value62 value1 value2 = (output77, value63, value1))
    (child2646 : Flapjack.WordAlloc.removeDeadStructural input2646 value63 value1 value2 = (output2646, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2647 value62 value1 value2 = (output2647, value1162, value1) := by
  rw [input2647_def, output2647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child2646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output2646_skip]
  kernel_rfl

theorem node2648_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value60 value1 value2 = (output76, value62, value1))
    (child2647 : Flapjack.WordAlloc.removeDeadStructural input2647 value62 value1 value2 = (output2647, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2648 value60 value1 value2 = (output2648, value1162, value1) := by
  rw [input2648_def, output2648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child2647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output2647_skip]
  kernel_rfl

theorem node2649_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value59 value1 value2 = (output73, value60, value1))
    (child2648 : Flapjack.WordAlloc.removeDeadStructural input2648 value60 value1 value2 = (output2648, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2649 value59 value1 value2 = (output2649, value1162, value1) := by
  rw [input2649_def, output2649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child2648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output2648_skip]
  kernel_rfl

theorem node2650_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value57 value1 value2 = (output72, value59, value1))
    (child2649 : Flapjack.WordAlloc.removeDeadStructural input2649 value59 value1 value2 = (output2649, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2650 value57 value1 value2 = (output2650, value1162, value1) := by
  rw [input2650_def, output2650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child2649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output2649_skip]
  kernel_rfl

theorem node2651_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value55 value1 value2 = (output69, value57, value1))
    (child2650 : Flapjack.WordAlloc.removeDeadStructural input2650 value57 value1 value2 = (output2650, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2651 value55 value1 value2 = (output2651, value1162, value1) := by
  rw [input2651_def, output2651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child2650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output2650_skip]
  kernel_rfl

theorem node2652_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value54 value1 value2 = (output66, value55, value1))
    (child2651 : Flapjack.WordAlloc.removeDeadStructural input2651 value55 value1 value2 = (output2651, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2652 value54 value1 value2 = (output2652, value1162, value1) := by
  rw [input2652_def, output2652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child2651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output2651_skip]
  kernel_rfl

theorem node2653_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value53 value1 value2 = (output65, value54, value1))
    (child2652 : Flapjack.WordAlloc.removeDeadStructural input2652 value54 value1 value2 = (output2652, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2653 value53 value1 value2 = (output2653, value1162, value1) := by
  rw [input2653_def, output2653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child2652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output2652_skip]
  kernel_rfl

theorem node2654_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value52 value1 value2 = (output64, value53, value1))
    (child2653 : Flapjack.WordAlloc.removeDeadStructural input2653 value53 value1 value2 = (output2653, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2654 value52 value1 value2 = (output2654, value1162, value1) := by
  rw [input2654_def, output2654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child2653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output2653_skip]
  kernel_rfl

theorem node2655_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value51 value1 value2 = (output63, value52, value1))
    (child2654 : Flapjack.WordAlloc.removeDeadStructural input2654 value52 value1 value2 = (output2654, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2655 value51 value1 value2 = (output2655, value1162, value1) := by
  rw [input2655_def, output2655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child2654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output2654_skip]
  kernel_rfl

theorem node2656_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value50 value1 value2 = (output62, value51, value1))
    (child2655 : Flapjack.WordAlloc.removeDeadStructural input2655 value51 value1 value2 = (output2655, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2656 value50 value1 value2 = (output2656, value1162, value1) := by
  rw [input2656_def, output2656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child2655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output2655_skip]
  kernel_rfl

theorem node2657_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1))
    (child2656 : Flapjack.WordAlloc.removeDeadStructural input2656 value50 value1 value2 = (output2656, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2657 value49 value1 value2 = (output2657, value1162, value1) := by
  rw [input2657_def, output2657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child2656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output2656_skip]
  kernel_rfl

theorem node2658_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value48 value1 value2 = (output60, value49, value1))
    (child2657 : Flapjack.WordAlloc.removeDeadStructural input2657 value49 value1 value2 = (output2657, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2658 value48 value1 value2 = (output2658, value1162, value1) := by
  rw [input2658_def, output2658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child2657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output2657_skip]
  kernel_rfl

theorem node2659_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value46 value1 value2 = (output59, value48, value1))
    (child2658 : Flapjack.WordAlloc.removeDeadStructural input2658 value48 value1 value2 = (output2658, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2659 value46 value1 value2 = (output2659, value1162, value1) := by
  rw [input2659_def, output2659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child2658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output2658_skip]
  kernel_rfl

theorem node2660_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value45 value1 value2 = (output56, value46, value1))
    (child2659 : Flapjack.WordAlloc.removeDeadStructural input2659 value46 value1 value2 = (output2659, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2660 value45 value1 value2 = (output2660, value1162, value1) := by
  rw [input2660_def, output2660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child2659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output2659_skip]
  kernel_rfl

theorem node2661_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value43 value1 value2 = (output55, value45, value1))
    (child2660 : Flapjack.WordAlloc.removeDeadStructural input2660 value45 value1 value2 = (output2660, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2661 value43 value1 value2 = (output2661, value1162, value1) := by
  rw [input2661_def, output2661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child2660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output2660_skip]
  kernel_rfl

theorem node2662_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value42 value1 value2 = (output52, value43, value1))
    (child2661 : Flapjack.WordAlloc.removeDeadStructural input2661 value43 value1 value2 = (output2661, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2662 value42 value1 value2 = (output2662, value1162, value1) := by
  rw [input2662_def, output2662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child2661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output2661_skip]
  kernel_rfl

theorem node2663_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value40 value1 value2 = (output51, value42, value1))
    (child2662 : Flapjack.WordAlloc.removeDeadStructural input2662 value42 value1 value2 = (output2662, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2663 value40 value1 value2 = (output2663, value1162, value1) := by
  rw [input2663_def, output2663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child2662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output2662_skip]
  kernel_rfl

theorem node2664_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value39 value1 value2 = (output48, value40, value1))
    (child2663 : Flapjack.WordAlloc.removeDeadStructural input2663 value40 value1 value2 = (output2663, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2664 value39 value1 value2 = (output2664, value1162, value1) := by
  rw [input2664_def, output2664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child2663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output2663_skip]
  kernel_rfl

theorem node2665_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value37 value1 value2 = (output47, value39, value1))
    (child2664 : Flapjack.WordAlloc.removeDeadStructural input2664 value39 value1 value2 = (output2664, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2665 value37 value1 value2 = (output2665, value1162, value1) := by
  rw [input2665_def, output2665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child2664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output2664_skip]
  kernel_rfl

theorem node2666_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child2665 : Flapjack.WordAlloc.removeDeadStructural input2665 value37 value1 value2 = (output2665, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2666 value36 value1 value2 = (output2666, value1162, value1) := by
  rw [input2666_def, output2666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child2665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output2665_skip]
  kernel_rfl

theorem node2667_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value34 value1 value2 = (output43, value36, value1))
    (child2666 : Flapjack.WordAlloc.removeDeadStructural input2666 value36 value1 value2 = (output2666, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2667 value34 value1 value2 = (output2667, value1162, value1) := by
  rw [input2667_def, output2667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child2666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output2666_skip]
  kernel_rfl

theorem node2668_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value33 value1 value2 = (output40, value34, value1))
    (child2667 : Flapjack.WordAlloc.removeDeadStructural input2667 value34 value1 value2 = (output2667, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2668 value33 value1 value2 = (output2668, value1162, value1) := by
  rw [input2668_def, output2668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child2667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output2667_skip]
  kernel_rfl

theorem node2669_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value31 value1 value2 = (output39, value33, value1))
    (child2668 : Flapjack.WordAlloc.removeDeadStructural input2668 value33 value1 value2 = (output2668, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2669 value31 value1 value2 = (output2669, value1162, value1) := by
  rw [input2669_def, output2669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child2668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output2668_skip]
  kernel_rfl

theorem node2670_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value29 value1 value2 = (output36, value31, value1))
    (child2669 : Flapjack.WordAlloc.removeDeadStructural input2669 value31 value1 value2 = (output2669, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2670 value29 value1 value2 = (output2670, value1162, value1) := by
  rw [input2670_def, output2670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child2669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output2669_skip]
  kernel_rfl

theorem node2671_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value28 value1 value2 = (output33, value29, value1))
    (child2670 : Flapjack.WordAlloc.removeDeadStructural input2670 value29 value1 value2 = (output2670, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2671 value28 value1 value2 = (output2671, value1162, value1) := by
  rw [input2671_def, output2671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child2670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output2670_skip]
  kernel_rfl

theorem node2672_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value27 value1 value2 = (output32, value28, value1))
    (child2671 : Flapjack.WordAlloc.removeDeadStructural input2671 value28 value1 value2 = (output2671, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2672 value27 value1 value2 = (output2672, value1162, value1) := by
  rw [input2672_def, output2672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child2671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output2671_skip]
  kernel_rfl

theorem node2673_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value26 value1 value2 = (output31, value27, value1))
    (child2672 : Flapjack.WordAlloc.removeDeadStructural input2672 value27 value1 value2 = (output2672, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2673 value26 value1 value2 = (output2673, value1162, value1) := by
  rw [input2673_def, output2673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child2672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output2672_skip]
  kernel_rfl

theorem node2674_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1))
    (child2673 : Flapjack.WordAlloc.removeDeadStructural input2673 value26 value1 value2 = (output2673, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2674 value25 value1 value2 = (output2674, value1162, value1) := by
  rw [input2674_def, output2674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child2673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output2673_skip]
  kernel_rfl

theorem node2675_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value24 value1 value2 = (output29, value25, value1))
    (child2674 : Flapjack.WordAlloc.removeDeadStructural input2674 value25 value1 value2 = (output2674, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2675 value24 value1 value2 = (output2675, value1162, value1) := by
  rw [input2675_def, output2675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child2674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output2674_skip]
  kernel_rfl

theorem node2676_cond_eq
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value23 value1 value2 = (output28, value24, value1))
    (child2675 : Flapjack.WordAlloc.removeDeadStructural input2675 value24 value1 value2 = (output2675, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2676 value23 value1 value2 = (output2676, value1162, value1) := by
  rw [input2676_def, output2676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child28]
  try dsimp only
  rw [child2675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output28_skip, output2675_skip]
  kernel_rfl

theorem node2677_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value22 value1 value2 = (output27, value23, value1))
    (child2676 : Flapjack.WordAlloc.removeDeadStructural input2676 value23 value1 value2 = (output2676, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2677 value22 value1 value2 = (output2677, value1162, value1) := by
  rw [input2677_def, output2677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child2676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output2676_skip]
  kernel_rfl

theorem node2678_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value20 value1 value2 = (output26, value22, value1))
    (child2677 : Flapjack.WordAlloc.removeDeadStructural input2677 value22 value1 value2 = (output2677, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2678 value20 value1 value2 = (output2678, value1162, value1) := by
  rw [input2678_def, output2678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child2677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output2677_skip]
  kernel_rfl

theorem node2679_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value19 value1 value2 = (output23, value20, value1))
    (child2678 : Flapjack.WordAlloc.removeDeadStructural input2678 value20 value1 value2 = (output2678, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2679 value19 value1 value2 = (output2679, value1162, value1) := by
  rw [input2679_def, output2679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child2678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output2678_skip]
  kernel_rfl

theorem node2680_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value17 value1 value2 = (output22, value19, value1))
    (child2679 : Flapjack.WordAlloc.removeDeadStructural input2679 value19 value1 value2 = (output2679, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2680 value17 value1 value2 = (output2680, value1162, value1) := by
  rw [input2680_def, output2680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child2679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output2679_skip]
  kernel_rfl

theorem node2681_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child2680 : Flapjack.WordAlloc.removeDeadStructural input2680 value17 value1 value2 = (output2680, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2681 value16 value1 value2 = (output2681, value1162, value1) := by
  rw [input2681_def, output2681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child2680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output2680_skip]
  kernel_rfl

theorem node2682_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child2681 : Flapjack.WordAlloc.removeDeadStructural input2681 value16 value1 value2 = (output2681, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2682 value14 value1 value2 = (output2682, value1162, value1) := by
  rw [input2682_def, output2682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child2681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output2681_skip]
  kernel_rfl

theorem node2683_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child2682 : Flapjack.WordAlloc.removeDeadStructural input2682 value14 value1 value2 = (output2682, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2683 value13 value1 value2 = (output2683, value1162, value1) := by
  rw [input2683_def, output2683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child2682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output2682_skip]
  kernel_rfl

theorem node2684_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child2683 : Flapjack.WordAlloc.removeDeadStructural input2683 value13 value1 value2 = (output2683, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2684 value11 value1 value2 = (output2684, value1162, value1) := by
  rw [input2684_def, output2684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child2683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output2683_skip]
  kernel_rfl

theorem node2685_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child2684 : Flapjack.WordAlloc.removeDeadStructural input2684 value11 value1 value2 = (output2684, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2685 value10 value1 value2 = (output2685, value1162, value1) := by
  rw [input2685_def, output2685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child2684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output2684_skip]
  kernel_rfl

theorem node2686_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child2685 : Flapjack.WordAlloc.removeDeadStructural input2685 value10 value1 value2 = (output2685, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2686 value8 value1 value2 = (output2686, value1162, value1) := by
  rw [input2686_def, output2686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child2685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output2685_skip]
  kernel_rfl

theorem node2687_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child2686 : Flapjack.WordAlloc.removeDeadStructural input2686 value8 value1 value2 = (output2686, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2687 value7 value1 value2 = (output2687, value1162, value1) := by
  rw [input2687_def, output2687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child2686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output2686_skip]
  kernel_rfl

theorem node2688_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child2687 : Flapjack.WordAlloc.removeDeadStructural input2687 value7 value1 value2 = (output2687, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2688 value5 value1 value2 = (output2688, value1162, value1) := by
  rw [input2688_def, output2688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child2687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output2687_skip]
  kernel_rfl

theorem node2689_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child2688 : Flapjack.WordAlloc.removeDeadStructural input2688 value5 value1 value2 = (output2688, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2689 value4 value1 value2 = (output2689, value1162, value1) := by
  rw [input2689_def, output2689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child2688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output2688_skip]
  kernel_rfl

theorem node2690_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child2689 : Flapjack.WordAlloc.removeDeadStructural input2689 value4 value1 value2 = (output2689, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2690 value0 value1 value2 = (output2690, value1162, value1) := by
  rw [input2690_def, output2690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child2689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output2689_skip]
  kernel_rfl

theorem node2691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2691 value1162 value1 value2 = (output2691, value1163, value1) := by
  rw [input2691_def, output2691_def]
  kernel_rfl

theorem node2692_cond_eq
    (child2690 : Flapjack.WordAlloc.removeDeadStructural input2690 value0 value1 value2 = (output2690, value1162, value1))
    (child2691 : Flapjack.WordAlloc.removeDeadStructural input2691 value1162 value1 value2 = (output2691, value1163, value1)) : Flapjack.WordAlloc.removeDeadStructural input2692 value0 value1 value2 = (output2692, value1163, value1) := by
  rw [input2692_def, output2692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2690]
  try dsimp only
  rw [child2691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2690_skip, output2691_skip]
  kernel_rfl

#print axioms node2692_cond_eq
end InitECandidate.Proofs.DeadStages783.Parallel
